import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18next/i18next.dart';


class GuestFormSuccessPage extends StatelessWidget {
  const GuestFormSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) => ListView(
          children: [
            Text(I18Next.of(context)!.t('guest_form:guestFormAdded')),
            TextButton(
              onPressed: () =>
              AutoRouter.of(context).popUntilRoot(),
              child: Text(I18Next.of(context)!.t('common:form:success')),
            ),
          ],
        ),
      ),
    );
  }
