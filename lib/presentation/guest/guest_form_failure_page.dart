import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18next/i18next.dart';

import '../routes/app_router.dart';


class GuestFormFailurePage extends StatelessWidget {
  const GuestFormFailurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) => ListView(
          children: [
            Text(I18Next.of(context)!.t('guest_form:guestFormNotAdded')),
            TextButton(
              onPressed: () =>
              AutoRouter.of(context).push(const GuestFormRoute()),
              child: Text(I18Next.of(context)!.t('common:form:failure')),
            ),
          ],
        ),
      ),
    );
  }
