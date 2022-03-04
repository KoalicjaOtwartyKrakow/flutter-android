import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../infrastructure/api_client.dart';
import '../../injection.dart';
import 'widgets/apartment_form.dart';

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

Future<bool> _downloadContract() async {
  final downloadUrlWithQuotation =
      await getIt<ApiClient>().getContractDownloadUrl();

  // Remove quotation marks from URL: "http://xyz.xyz" -> http://xyz.xyz
  final downloadUrl = downloadUrlWithQuotation.substring(
      1, downloadUrlWithQuotation.length - 1);
  return await launch(downloadUrl);
}
