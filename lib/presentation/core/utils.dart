import 'package:flutter/material.dart';

import '../../models/accomodation.dart';
import '../../models/accomodation_verification_status.dart';

Color getVacanciesColor(Accomodation accomodation) {
  return accomodation.vacanciesFree == 0
      ? Colors.red[200]!
      : (accomodation.vacanciesFree == accomodation.vacanciesTotal
          ? Colors.green[200]!
          : Colors.yellow[200]!);
}

Widget getAcceptPetsIndicator(Accomodation accomodation) {
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

Widget getHavePetsIndicator(Accomodation accomodation) {
  if (accomodation.havePets == null) {
    // Unspecified if haves pets
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
  } else if (accomodation.havePets!) {
    return const Icon(Icons.pets);
  } else {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: const [
        Icon(
          Icons.pets,
          color: Colors.grey,
        ),
      ],
    );
  }
}

Widget getVerifiedIndicator(Accomodation accomodation) {
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

Color? getVerifiedColor(Accomodation accomodation) {
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
