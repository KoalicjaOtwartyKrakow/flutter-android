import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/injection.dart';


class GuestFormFailurePage extends StatelessWidget {
  const GuestFormFailurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getIt<ApiClient>().listApartments(),
        builder: (context, snapshot) => ListView(
          children: [
            const Text('Nie udało się zgłosić potrzeby lokalu. Spróbuj ponownie.'),
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