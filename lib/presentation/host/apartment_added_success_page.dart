import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/injection.dart';

import '../../models/accomodation.dart';

class ApartmentAddedSuccessPage extends StatelessWidget {
  const ApartmentAddedSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getIt<ApiClient>().getAccomodations(),
        builder: (context, snapshot) => ListView(
          children: [
            const Text('Dziękujemy! Dodałeś lokal. Prosimy czekać na kontakt.'),
            const Text('Tutaj znajdzie się lista mieszkań, które zgłosiłeś.'),
            if (snapshot.hasData)
              ...(snapshot.data as List<Accomodation>)
                  .map(
                    (accomodation) => ListTile(
                      title: Text(accomodation.addressLine),
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
              child: const Text('Super'),
            ),
          ],
        ),
      ),
    );
  }
}
