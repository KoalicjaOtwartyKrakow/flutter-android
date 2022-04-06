import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/presentation/routes/app_router.dart';
import 'package:i18next/i18next.dart';

class VolunteerPage extends StatelessWidget {
  const VolunteerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(I18Next.of(context)!.t('volunteer:coordinator')),
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
                onTap: () => AutoRouter.of(context).push(const AccommodationListRoute()),
                leading: const Icon(Icons.home_outlined),
                title: Text(I18Next.of(context)!.t('volunteer:showApartments')),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 6,
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: ListTile(
                iconColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                onTap: () => AutoRouter.of(context).push(const GuestListRoute()),
                leading: const Icon(Icons.person_add),
                title: Text(I18Next.of(context)!.t('volunteer:showRequests')),
              ),
            ),
          ],
        ),
      ),
    );
  }
