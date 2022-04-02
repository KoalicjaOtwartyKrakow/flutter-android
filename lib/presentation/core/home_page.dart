import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18next/i18next.dart';

import '../guest/guest_page.dart';
import '../routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(I18Next.of(context)!.t('common:application.title')),
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
                child: Text(
                  I18Next.of(context)!.t('home:header'),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                iconColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                onTap: () => AutoRouter.of(context).push(
                  const GuestRoute(),
                ),
                leading: const Icon(Icons.travel_explore),
                title: Text(
                  I18Next.of(context)!.t('home:search'),
                ),
              ),
              ListTile(
                iconColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                onTap: () => AutoRouter.of(context).push(
                  const HostRoute(),
                ),
                leading: const Icon(Icons.night_shelter),
                title: Text(
                  I18Next.of(context)!.t('home:propose'),
                ),
              ),
              ListTile(
                iconColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                onTap: () =>
                    AutoRouter.of(context).push(const VolunteerRoute()),
                leading: const Icon(Icons.menu_book),
                title: Text(
                  I18Next.of(context)!.t('home:coordinator'),
                ),
              ),
            ],
          ),
        ),
      );
}
