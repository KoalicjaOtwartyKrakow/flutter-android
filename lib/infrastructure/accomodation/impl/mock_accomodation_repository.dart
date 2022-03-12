import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/accomodation/i_accomodation_repository.dart';
import 'package:flutter_android/models/accomodation_verification_status.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:flutter_android/models/accomodation.dart';

class MockAccomodationRepository implements IAccomodationRepository {
  @override
  Future<Either<Failure, List<Accomodation>>> getAccomodations() async {
    return right(
      [
        Accomodation(
          zip: "20-203",
          city: "Kraków",
          addressLine: "ul. Urzędnicza 11",
          voivodeship: "MAŁOPOLSKIE",
          vacanciesTotal: 10,
          vacanciesFree: 5,
          havePets: false,
          acceptPets: true,
          comments: "Turn right behind the Frogshop",
          status: AccomodationVerificationStatus.phoneVerified,
        ),
        Accomodation(
          zip: "34-123",
          city: "Tarnów",
          addressLine: "ul. Jana Pawła II 54",
          voivodeship: "MAŁOPOLSKIE",
          vacanciesTotal: 3,
          vacanciesFree: 3,
          havePets: true,
          acceptPets: false,
          comments: "We have baby carriages available",
          status: AccomodationVerificationStatus.inPersonVerified,
        ),
        Accomodation(
          zip: "22-034",
          city: "Kraków",
          addressLine: "ul. Podejrzana 1",
          voivodeship: "MAŁOPOLSKIE",
          vacanciesTotal: 20,
          vacanciesFree: 20,
          havePets: false,
          acceptPets: true,
          comments: "Only girls ages <25",
          status: AccomodationVerificationStatus.added,
        ),
      ],
    );
  }
}
