import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/accomodation.dart';
import '../../core/utils.dart';

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
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.location_city),
                      Text('MIASTO: '),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.city ?? 'Nie podano miasta',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.mail),
                      Text('KOD POCZTOWY: '),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.zip,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.map),
                      Text('WOJEWÓDZTWO: '),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.voivodeship ?? 'Nie podano województwa',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.location_on),
                      Text('ADRES: '),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.addressLine,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            color: getVacanciesColor(accomodation),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(Icons.night_shelter),
                        Text('WOLNE MIEJSCA: '),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    accomodation.vacanciesFree.toString() +
                        '/' +
                        accomodation.vacanciesTotal.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      getHavePetsIndicator(accomodation),
                      Text(
                        (accomodation.havePets == null
                                ? 'Nie podano informacji o posiadanych zwierzętach'
                                : (accomodation.havePets!
                                    ? 'Posiada zwierzęta'
                                    : 'Nie posiada zwierząt'))
                            .toUpperCase(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      getAcceptPetsIndicator(accomodation),
                      Text(
                        (accomodation.acceptPets == null
                                ? 'Nie podano informacji o akceptowanych zwierzętach'
                                : (accomodation.acceptPets!
                                    ? 'Akceptuje zwierzęta'
                                    : 'Nie akceptuje zwierząt'))
                            .toUpperCase(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.comment),
                      Text('UWAGI: '),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.comments ?? 'Brak dodatkowych komentarzy',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.report),
                      Text('STATUS: '),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  (accomodation.status?.name ??
                      'Brak informacji o statusie weryfikacji'),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
