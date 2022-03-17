import 'package:dartz/dartz.dart';
import 'package:flutter_android/application/accommodation_loader/accommodation_loader_bloc.dart';
import 'package:flutter_android/infrastructure/accomodation/i_accomodation_repository.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAccommodationRepository extends Mock implements IAccomodationRepository {}

class FakeAccomodation extends Fake implements Accommodation {}

class FakeFailure extends Fake implements Failure {}

void main() {
  late AccommodationLoaderBloc accommodationLoaderBloc;
  late MockAccommodationRepository mockAccommodationRepository;

  setUp(() {
    mockAccommodationRepository = MockAccommodationRepository();
    accommodationLoaderBloc = AccommodationLoaderBloc(mockAccommodationRepository);
  });

  test(
    'initial state should be empty',
    () async {
      // assert
      expect(
        accommodationLoaderBloc.state,
        const AccommodationLoaderState.initial(),
      );
    },
  );

  test(
    'should emit AccomodationLoaderState.loadSuccess() if _iAccomodationRepository.getAccomodations() returns right of either with list of accomodations',
    () async {
      // arrange
      final tAccomodations = <Accommodation>[
        FakeAccomodation(),
        FakeAccomodation(),
      ];
      when(mockAccommodationRepository).calls(const Symbol('getAccomodations'))
          .thenAnswer(
            (_) async => right<Failure, List<Accommodation>>(tAccomodations),
          );

      // assert later
      final expected = [
        const AccommodationLoaderState.loadInProgress(),
        AccommodationLoaderState.loadSuccess(tAccomodations),
      ];
      expectLater(
        accommodationLoaderBloc.stream,
        emitsInOrder(expected),
      );

      // act
      accommodationLoaderBloc.add(
        const AccommodationLoaderEvent.getAccommodationsStarted(),
      );
    },
  );

  test(
    'should emit AccomodationLoaderState.loadFailure() if _iAccomodationRepository.getAccomodations() returns left of either with failure',
    () async {
      // arrange
      final tFailure = FakeFailure();
      when(mockAccommodationRepository).calls(const Symbol('getAccomodations'))
          .thenAnswer(
            (_) async => left<Failure, List<Accommodation>>(tFailure),
          );

      // assert later
      final expected = [
        const AccommodationLoaderState.loadInProgress(),
        AccommodationLoaderState.loadFailure(tFailure),
      ];
      expectLater(
        accommodationLoaderBloc.stream,
        emitsInOrder(expected),
      );

      // act
      accommodationLoaderBloc.add(
        const AccommodationLoaderEvent.getAccommodationsStarted(),
      );
    },
  );

  tearDown(() {
    accommodationLoaderBloc.close();
  });
}
