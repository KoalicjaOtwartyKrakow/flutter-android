import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/injection.dart';


class GuestFormSuccessPage extends StatelessWidget {
  const GuestFormSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getIt<ApiClient>().listApartments(),
        builder: (context, snapshot) => ListView(
          children: [
            const Text('Dziękujemy! Zgłosiłeś potrzebę lokalu. Prosimy czekać na kontakt.'),
            TextButton(
              onPressed: () =>
                  AutoRouter.of(context).popUntil((route) => route.isFirst),
              child: const Text('Super'),
            ),
          ],
        ),
      ),
    );
  }
}
