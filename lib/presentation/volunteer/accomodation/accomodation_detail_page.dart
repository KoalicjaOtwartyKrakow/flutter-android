import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../../models/accomodation.dart';
import '../../core/utils.dart';

class AccomodationDetailPage extends StatelessWidget {
  const AccomodationDetailPage({
    Key? key,
    required this.accomodation,
  }) : super(key: key);

  final Accommodation accomodation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          I18Next.of(context)!.t('accommodation:appBar.title'),
        ),
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
                    children: [
                      Icon(Icons.location_city),
                      Text(
                        I18Next.of(context)!
                            .t('accommodation:form.label.addressCity'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.city ??
                      I18Next.of(context)!.t('accommodation:form.label.noInfo'),
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
                    children: [
                      Icon(Icons.mail),
                      Text(
                        I18Next.of(context)!
                            .t('accommodation:form.label.addressZip'),
                      ),
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
                    children: [
                      Icon(Icons.map),
                      Text(
                        I18Next.of(context)!
                            .t('accommodation:form.label.addressProvince'),
                      ),
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
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        I18Next.of(context)!
                            .t('accommodation:form.label.addressLine'),
                      ),
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
                      children: [
                        Icon(Icons.night_shelter),
                        Text(
                          I18Next.of(context)!
                              .t('accommodation:form.label.vacanciesFree'),
                        ),
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
                                ? I18Next.of(context)!
                                    .t('accommodation:form.label.noInfo')
                                : (accomodation.havePets!
                                    ? I18Next.of(context)!.t(
                                        'accommodation:form.label.petsPresent')
                                    : I18Next.of(context)!.t(
                                        'accommodation:form.label.petsNotPresent')))
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
                                ? I18Next.of(context)!
                                    .t('accommodation:form.label.noInfo')
                                : (accomodation.acceptPets!
                                    ? I18Next.of(context)!.t(
                                        'accommodation:form.label.petsAllowed')
                                    : I18Next.of(context)!.t(
                                        'accommodation:form.label.petsNotAllowed')))
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
                    children: [
                      Icon(Icons.comment),
                      Text(
                        I18Next.of(context)!
                            .t('accommodation:form.label.comments'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  accomodation.comments ??
                      I18Next.of(context)!.t('accommodation:form.label.noInfo'),
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
                    children: [
                      Icon(Icons.report),
                      Text(
                        I18Next.of(context)!
                            .t('accommodation:form.label.status'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  (accomodation.status?.name ??
                      I18Next.of(context)!
                          .t('accommodation:form.label.noInfo')),
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
