import 'package:flutter/material.dart';

import '../../models/accomodation.dart';
import '../../models/accomodation_verification_status.dart';

Color getVacanciesColor(Accommodation accommodation) {
  return accommodation.vacanciesFree == 0
      ? Colors.red[200]!
      : (accommodation.vacanciesFree == accommodation.vacanciesTotal
          ? Colors.green[200]!
          : Colors.yellow[200]!);
}

Widget getAcceptPetsIndicator(Accommodation accommodation) {
  if (accommodation.acceptPets == null) {
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
  } else if (accommodation.acceptPets!) {
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

Widget getHavePetsIndicator(Accommodation accommodation) {
  if (accommodation.havePets == null) {
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
  } else if (accommodation.havePets!) {
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

Widget getVerifiedIndicator(Accommodation accommodation) {
  switch (accommodation.status) {
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

Color? getVerifiedColor(Accommodation accommodation) {
  switch (accommodation.status) {
    case AccomodationVerificationStatus.phoneVerified:
      return Colors.yellow[100];
    case AccomodationVerificationStatus.inPersonVerified:
      return Colors.green[200];
    case AccomodationVerificationStatus.added:
    default:
      return Colors.grey[200];
  }
}
