import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/application/guest/guest_list_bloc.dart';
import 'package:flutter_android/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GuestListPage extends StatelessWidget {
  const GuestListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocProvider<GuestListBloc>(
          create: (_) => getIt<GuestListBloc>(),
          child: BlocBuilder<GuestListBloc, GuestListState>(
            builder: (_, __) => const Center(child: Text('TODO')),
          ),
        ),
      );
}
