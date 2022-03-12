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
            Container(
              height: MediaQuery.of(context).size.height / 3,
              margin: const EdgeInsets.all(12),
              child: Image.asset(
                'assets/images/mapa-polski.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: const Text(
                'Jeśli masz możliwość udostępnienia lokalu mieszkalnego osobie lub rodzinie z Ukrainy, prosimy o wypełnienie formularza. Jeśli masz ograniczenia co do tego kogo możesz przyjąć (np. ludzie ze zwierzętami domowymi), zaznacz to proszę w opisie lokalu. Dziękujemy!',
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              iconColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).primaryColor,
              onTap: () => AutoRouter.of(context).push(
                const GuestRoute(),
              ),
              leading: Icon(Icons.travel_explore),
              title: const Text(
                'SZUKAM LOKALU',
              ),
            ),
            ListTile(
              iconColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).primaryColor,
              onTap: () => AutoRouter.of(context).push(
                const HostRoute(),
              ),
              leading: const Icon(Icons.night_shelter),
              title: const Text(
                'CHCĘ ZAPROPONOWAĆ LOKAL',
              ),
            ),
            ListTile(
              iconColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).primaryColor,
              onTap: () {},
              leading: const Icon(Icons.menu_book),
              title: const Text(
                'JESTEM KOORDYNATOREM',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
