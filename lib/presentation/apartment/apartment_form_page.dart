import 'package:flutter/material.dart';
import 'package:flutter_android/presentation/apartment/widgets/apartment_form.dart';

import '../../infrastructure/api_client.dart';
import '../../injection.dart';

class ApartmentFormPage extends StatelessWidget {
  const ApartmentFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zaproponuj mieszkanie'),
      ),
      body: ApartmentForm(
        apiClient: getIt<ApiClient>(),
      ),
    );
  }
}
