import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/injection.dart';
import 'package:i18next/i18next.dart';

import '../../models/accomodation.dart';

class ApartmentAddedSuccessPage extends StatelessWidget {
  const ApartmentAddedSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder(
          future: getIt<ApiClient>().getAccomodations(),
          builder: (context, snapshot) => ListView(
            children: [
              Text(I18Next.of(context)!.t('apartment:addSuccess')),
              Text(I18Next.of(context)!.t('apartment:addSuccessFooter')),
              if (snapshot.hasData)
                ...(snapshot.data as List<Accommodation>)
                    .map(
                      (accommodation) => ListTile(
                        title: Text(accommodation.addressLine),
                      ),
                    )
                    .toList(
                      growable: true,
                    )
              else
                ...([1, 2, 3].map(
                  (_) => Container(
                    margin: const EdgeInsets.all(15.0),
                    child: const LinearProgressIndicator(),
                  ),
                )),
              TextButton(
                onPressed: () =>
                    AutoRouter.of(context).popUntil((route) => route.isFirst),
                child: Text(I18Next.of(context)!.t('apartment:successButton')),
              ),
            ],
          ),
        ),
      );
}
