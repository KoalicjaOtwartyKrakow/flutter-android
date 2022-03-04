import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/injection.dart';

import '../../models/apartment.dart';
import '../routes/app_router.dart';

class ApartmentAddedSuccessPage extends StatelessWidget {
  const ApartmentAddedSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getIt<ApiClient>().listApartments(),
        builder: (context, snapshot) => ListView(
          children: [
            const Text('Dziękujemy! Dodałeś lokal. Prosimy czekać na kontakt.'),
            const Text('Tutaj znajdzie się lista mieszkań, które zgłosiłeś.'),
            if (snapshot.hasData)
              ...(snapshot.data as List<Apartment>)
                  .map(
                    (apartment) => ListTile(
                      title: Text(apartment.createdAt?.toIso8601String() ?? ""),
                    ),
                  )
                  .toList(
                    growable: true,
                  )
            else
              ...([1, 2, 3].map(
                (_) => Container(
                  margin: EdgeInsets.all(15.0),
                  child: LinearProgressIndicator(),
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