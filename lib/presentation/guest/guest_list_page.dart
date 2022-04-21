import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/application/guest/guest_list_bloc.dart';
import 'package:flutter_android/injection.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class GuestListPage extends StatelessWidget {
  const GuestListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocProvider<GuestListBloc>(
          create: (_) => getIt<GuestListBloc>()..add(const GuestListEvent.download(resetOffset: false)),
          child: BlocBuilder<GuestListBloc, GuestListState>(
            builder: (context, GuestListState state) => state.maybeWhen(
              loadSuccess: (guests) => _buildLoadedBody(context, guests),
              loadInProgress: () => const Center(child: CupertinoActivityIndicator()),
              orElse: () => const SizedBox(),
            ),
          ),
        ),
      );

  _buildLoadedBody(BuildContext context, List<Guest> guests) => RefreshIndicator(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: guests.length,
            itemBuilder: (_, index) => GuestTile(guests[index]),
            separatorBuilder: (BuildContext context, int index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              height: 1,
              color: Colors.black,
            ),
          ),
        ),
        //TODO add pagination
        onRefresh: () async => context.read<GuestListBloc>().add(const GuestListEvent.download(resetOffset: true)),
      );
}

class GuestTile extends StatelessWidget {
  final Guest guest;

  const GuestTile(this.guest, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            guest.fullName,
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                guest.phoneNumber,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              if (guest.priorityStatus != null)
                Text(
                  //TODO map to user-friendly texts
                  guest.priorityStatus.toString(),
                  style: const TextStyle(
                    backgroundColor: Colors.red,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (guest.priorityDate != null) Text(DateFormat.yMd().format(guest.priorityDate!)),
              //TODO fill with real data
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('1'),
                  Text('3'),
                ],
              ),
              const Text('4 weeks'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.flutter_dash),
                ],
              ),
            ],
          ),
        ],
      );
}
