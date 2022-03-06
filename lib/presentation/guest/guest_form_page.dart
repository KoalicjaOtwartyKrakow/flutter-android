import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../infrastructure/api_client.dart';
import '../../injection.dart';
import 'widgets/guest_form.dart';

class GuestFormPage extends StatelessWidget {
  const GuestFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zgłoś potrzebę mieszkania'),
      ),
      body: GuestForm(
        apiClient: getIt<ApiClient>(),
      ),
    );
  }
}