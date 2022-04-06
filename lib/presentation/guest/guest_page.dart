import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/presentation/routes/app_router.dart';
import 'package:i18next/i18next.dart';

class GuestPage extends StatelessWidget {
  const GuestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Gość'),
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
                    AutoRouter.of(context).push(const GuestFormRoute()),
                leading: Icon(Icons.night_shelter),
                title: Text(
                    I18Next.of(context)!.t('guest_page:requestAccommodation')
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }