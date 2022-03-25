import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../../application/accommodation_loader/accommodation_loader_bloc.dart';
import '../../../injection.dart';
import '../../../models/accomodation.dart';
import '../../core/utils.dart';
import '../../routes/app_router.dart';

class AccommodationListPage extends StatelessWidget {
  const AccommodationListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          I18Next.of(context)!.t('volunteer:accommodationListTitle'),
        ),
      ),
      body: BlocProvider<AccommodationLoaderBloc>(
        create: (context) => getIt<AccommodationLoaderBloc>()
          ..add(
            const AccommodationLoaderEvent.getAccommodationsStarted(),
          ),
        child: BlocBuilder<AccommodationLoaderBloc, AccommodationLoaderState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (successState) => AccomodationListLoadSuccessWidget(
              accomodations: successState.accommodations,
            ),
            loadFailure: (failureState) => Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 72,
                  ),
                  Text(
                    // TODO: failures should probably be mapped to specific user friendly messages for profuction
                    failureState.failure.toString(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AccomodationListLoadSuccessWidget extends StatelessWidget {
  const AccomodationListLoadSuccessWidget({
    Key? key,
    required this.accomodations,
  }) : super(key: key);

  final List<Accommodation> accomodations;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
            child: Text(
              I18Next.of(context)!.t('volunteer:accommodationList'),
              textAlign: TextAlign.center,
            ),
          ),
          ...accomodations
              .map(
                (accomodation) => Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ListTile(
                    tileColor: getVacanciesColor(accomodation),
                    leading: getVerifiedIndicator(accomodation),
                    title: Text(accomodation.addressLine),
                    subtitle: Column(
                      children: [
                        Text(
                          I18Next.of(context)!
                              .t('volunteer:location', variables: {
                            'voivodeship': (accomodation.voivodeship ??
                                'Nie podano województwa'),
                            'city': (accomodation.city ?? 'Nie podano miasta'),
                          }),
                        ),
                        Wrap(
                          children: [
                            SizedBox(
                              child: getAcceptPetsIndicator(accomodation),
                              width: 30,
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Text(
                      I18Next.of(context)!.t('volunteer:vacancies', variables: {
                        'free': accomodation.vacanciesFree,
                        'total': accomodation.vacanciesTotal,
                      }),
                    ),
                    onTap: () => AutoRouter.of(context).push(
                      AccomodationDetailRoute(
                        accomodation: accomodation,
                      ),
                    ),
                  ),
                ),
              )
              .toList(
                growable: true,
              )
        ],
      ),
    );
  }
}
