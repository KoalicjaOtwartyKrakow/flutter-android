import 'package:flutter/material.dart';

import '../../infrastructure/api_client.dart';
import '../../injection.dart';
import 'widgets/apartment_form.dart';

class ApartmentPage extends StatelessWidget {
  const ApartmentPage({Key? key}) : super(key: key);

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
