import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/presentation/routes/app_router.dart';

class VolunteerPage extends StatelessWidget {
  const VolunteerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koordynator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 6,
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: ListTile(
                iconColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                onTap: () =>
                    AutoRouter.of(context).push(const AccomodationListRoute()),
                leading: const Icon(Icons.home_outlined),
                title: const Text(
                  'WYŚWIETL MIESZKANIA',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 6,
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: ListTile(
                iconColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                onTap: () {},
                leading: const Icon(Icons.person_add),
                title: const Text(
                  'WYŚWIETL ZGŁOSZENIA GOŚCI',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
