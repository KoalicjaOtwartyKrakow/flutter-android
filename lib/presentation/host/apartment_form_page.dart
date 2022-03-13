import 'package:flutter/material.dart';
import 'package:flutter_android/application/apartment_form/apartment_form_bloc.dart';
import 'package:flutter_android/presentation/host/widgets/apartment_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../injection.dart';

class ApartmentFormPage extends StatelessWidget {
  const ApartmentFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18Next.of(context)!.t('apartment:propose')),
      ),
      body: BlocProvider<ApartmentFormBloc>(
        create: (_) => getIt<ApartmentFormBloc>(),
        child: const ApartmentForm(),
      ),
    );
  }
}
