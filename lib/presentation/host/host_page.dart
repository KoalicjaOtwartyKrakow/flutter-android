import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/presentation/routes/app_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../infrastructure/api_client.dart';
import '../../injection.dart';
import 'widgets/apartment_form.dart';

class HostPage extends StatelessWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gospodarz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 6,
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: ElevatedButton(
                onPressed: () =>
                    AutoRouter.of(context).push(const ApartmentFormRoute()),
                child: Text('Zaproponuj mieszkanie'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 6,
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: const ElevatedButton(
                onPressed: _downloadContract,
                child: Text('Pobierz umowę'),
              ),
            ),
          ],
        ),
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
