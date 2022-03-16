import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injection.dart';
import 'guest_form_bloc/guest_form_bloc.dart';
import 'widgets/guest_form.dart';

import '../../../infrastructure/guest/i_guest_repository.dart';

class GuestFormPage extends StatelessWidget {
  const GuestFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zgłoś potrzebę mieszkania'),
      ),
      body: BlocProvider<GuestFormBloc>(
        create: (_) => getIt<GuestFormBloc>(),
        child: GuestForm(),
      ),
    );
  }
}