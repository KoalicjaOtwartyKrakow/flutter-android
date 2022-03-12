import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/accomodation.dart';

class AccomodationDetailPage extends StatelessWidget {
  const AccomodationDetailPage({
    Key? key,
    required this.accomodation,
  }) : super(key: key);

  final Accomodation accomodation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacje o mieszkaniu'),
      ),
      body: ListView(
        children: [
          Text(accomodation.city ?? 'Nie podano miasta'),
          Text(accomodation.zip),
          Text(accomodation.voivodeship ?? 'Nie podano województwa'),
          Text(accomodation.addressLine),
          Text(accomodation.vacanciesTotal.toString()),
          Text(accomodation.vacanciesFree.toString()),
          Text(
            accomodation.havePets == null
                ? 'Nie podano informacji o posiadanych zwierzętach'
                : (accomodation.havePets!
                    ? 'Posiada zwierzęta'
                    : 'Nie posiada zwierząt'),
          ),
          Text(
            accomodation.acceptPets == null
                ? 'Nie podano informacji o posiadanych zwierzętach'
                : (accomodation.acceptPets!
                    ? 'Akceptuje zwierzęta'
                    : 'Nie akceptuje zwierząt'),
          ),
          Text(accomodation.comments ?? 'Brak dodatkowych komentarzy'),
          Text(
            accomodation.status?.name ??
                'Brak informacji o statusie weryfikacji',
          ),
        ]
            .map(
              (w) => Padding(
                padding: const EdgeInsets.all(8),
                child: w,
              ),
            )
            .toList(),
      ),
    );
  }
}
