import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koalicja Otwarty Kraków'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'Jeśli masz możliwość udostępnienia lokalu mieszkalnego osobie lub rodzinie z Ukrainy, prosimy o wypełnienie formularza. Jeśli masz ograniczenia co do tego kogo możesz przyjąć (np. ludzie ze zwierzętami domowymi), zaznacz to proszę w opisie lokalu. Dziękujemy!'),
            TextButton(
              onPressed: () => AutoRouter.of(context).replace(
                const ApartmentRoute(),
              ),
              child: const Text(
                'Chcę zaproponować lokal',
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Jestem koordynatorem',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
