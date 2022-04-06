import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../injection.dart';
import 'guest_form_bloc/guest_form_bloc.dart';
import 'widgets/guest_form.dart';

class GuestFormPage extends StatelessWidget {
  const GuestFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(I18Next.of(context)!.t('guest_page:requestAccommodation'))
      ),
      body: BlocProvider<GuestFormBloc>(
        create: (_) => getIt<GuestFormBloc>(),
        child: GuestForm(),
      ),
    );
  }