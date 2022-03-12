import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/accomodation_loader/accomodation_loader_bloc.dart';
import '../../../injection.dart';
import '../../../models/accomodation.dart';
import '../../../models/accomodation_verification_status.dart';

class AccomodationListPage extends StatelessWidget {
  const AccomodationListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mieszkania'),
      ),
      body: BlocProvider<AccomodationLoaderBloc>(
        create: (context) => getIt<AccomodationLoaderBloc>()
          ..add(
            const AccomodationLoaderEvent.getAccomodationsStarted(),
          ),
        child: BlocBuilder<AccomodationLoaderBloc, AccomodationLoaderState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (successState) => AccomodationListLoadSuccessWidget(
              accomodations: successState.accomodations,
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

  final List<Accomodation> accomodations;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
            child: Text(
              'Lista zgłoszonych mieszkań',
              textAlign: TextAlign.center,
            ),
          ),
          ...accomodations
              .map(
                (accomodation) => Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ListTile(
                    tileColor: _getVerifiedColor(accomodation),
                    leading: _getVerifiedIndicator(accomodation),
                    title: Text(accomodation.addressLine),
                    subtitle: Column(
                      children: [
                        Text(
                          (accomodation.voivodeship ?? '') +
                              ' ' +
                              (accomodation.city ?? ''),
                        ),
                        Wrap(
                          children: [
                            SizedBox(
                              child: _getAcceptPetsIndicator(accomodation),
                              width: 30,
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Text(
                      'Wolne miejsca: ' +
                          accomodation.vacanciesFree.toString() +
                          '/' +
                          accomodation.vacanciesTotal.toString(),
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

  Color? _getVerifiedColor(Accomodation accomodation) {
    switch (accomodation.status) {
      case AccomodationVerificationStatus.phoneVerified:
        return Colors.yellow[100];
      case AccomodationVerificationStatus.inPersonVerified:
        return Colors.green[200];
      case AccomodationVerificationStatus.added:
      default:
        return Colors.grey[200];
    }
  }

  Widget _getVerifiedIndicator(Accomodation accomodation) {
    switch (accomodation.status) {
      case AccomodationVerificationStatus.phoneVerified:
        return Stack(
          children: const [
            Icon(Icons.phone),
            Icon(
              Icons.check,
              color: Colors.green,
              size: 35,
            ),
          ],
        );
      case AccomodationVerificationStatus.inPersonVerified:
        return Stack(
          children: const [
            Icon(Icons.person),
            Icon(
              Icons.check,
              color: Colors.green,
              size: 35,
            ),
          ],
        );
      case AccomodationVerificationStatus.added:
      default:
        return const Icon(Icons.question_mark);
    }
  }

  Widget _getAcceptPetsIndicator(Accomodation accomodation) {
    if (accomodation.acceptPets == null) {
      // Unspecified if accepts pets
      return Stack(
        children: const [
          Icon(
            Icons.pets,
            color: Colors.grey,
          ),
          Icon(
            Icons.question_mark,
            color: Colors.orange,
          ),
        ],
      );
    } else if (accomodation.acceptPets!) {
      return const Icon(Icons.pets);
    } else {
      return Stack(
        alignment: AlignmentDirectional.center,
        children: const [
          Icon(
            Icons.pets,
            color: Colors.grey,
          ),
          Icon(
            Icons.close,
            color: Colors.red,
            size: 30,
          ),
        ],
      );
    }
  }
}
