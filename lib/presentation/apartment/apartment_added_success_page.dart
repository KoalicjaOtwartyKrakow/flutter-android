import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';

class ApartmentAddedSuccessPage extends StatelessWidget {
  const ApartmentAddedSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text('Dziękujemy! Dodałeś lokal. Prosimy czekać na kontakt.'),
          const Text('Tutaj znajdzie się lista mieszkań, które zgłosiłeś.'),
          TextButton(
            onPressed: () =>
                AutoRouter.of(context).replace(const ApartmentRoute()),
            child: const Text('Chcę zaproponować jeszcze jeden lokal'),
          ),
        ],
      ),
    );
  }
}
