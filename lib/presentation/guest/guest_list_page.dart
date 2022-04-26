import 'package:flutter/material.dart';
import 'package:flutter_android/application/guest/guest_list_bloc.dart';
import 'package:flutter_android/injection.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/presentation/core/constants.dart';
import 'package:flutter_android/presentation/guest/widgets/guest_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class GuestListPage extends StatefulWidget {
  const GuestListPage({Key? key}) : super(key: key);

  @override
  State<GuestListPage> createState() => _GuestListPageState();
}

class _GuestListPageState extends State<GuestListPage> {
  final PagingController<int, Guest> _pagingController = PagingController(firstPageKey: 0);

  void _appendPage(List<Guest> newItems) {
    final isLastPage = newItems.length < pageSize;
    if (isLastPage) {
      _pagingController.appendLastPage(newItems);
    } else {
      final nextPageKey = _pagingController.itemList?.length ?? 0 + newItems.length;
      _pagingController.appendPage(newItems, nextPageKey);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(I18Next.of(context)!.t('guest_list_page:title'))),
        body: BlocProvider<GuestListBloc>(
          create: (context) {
            final bloc = getIt<GuestListBloc>();
            _pagingController
                .addPageRequestListener((pageKey) => bloc.add(GuestListEvent.downloadPage(offset: pageKey)));
            return bloc;
          },
          child: BlocConsumer<GuestListBloc, GuestListState>(
            buildWhen: (_, current) => current.when(
              pageLoadSuccess: (_) => false,
              pageLoadFailure: (_) => false,
              initial: () => true,
            ),
            listener: (context, state) => state.maybeWhen(
              pageLoadSuccess: _appendPage,
              pageLoadFailure: (failure) => _pagingController.error = failure,
              orElse: () => null,
            ),
            builder: (context, state) => state.maybeWhen(
              initial: () => _buildBody(context),
              orElse: () => const SizedBox(),
            ),
          ),
        ),
      );

  _buildBody(BuildContext context) => RefreshIndicator(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PagedListView<int, Guest>.separated(
            separatorBuilder: (context, index) => const Divider(thickness: 2),
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<Guest>(itemBuilder: (context, item, index) => GuestTile(item)),
          ),
        ),
        onRefresh: () async => context.read<GuestListBloc>().add(const GuestListEvent.downloadPage(offset: 0)),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
