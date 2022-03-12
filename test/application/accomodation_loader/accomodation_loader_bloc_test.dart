import 'package:dartz/dartz.dart';
import 'package:flutter_android/application/accomodation_loader/accomodation_loader_bloc.dart';
import 'package:flutter_android/infrastructure/accomodation/i_accomodation_repository.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAccomodationRepository extends Mock
    implements IAccomodationRepository {}

class FakeAccomodation extends Fake implements Accomodation {}

void main() {
  late AccomodationLoaderBloc accomodationLoaderBloc;
  late MockAccomodationRepository mockAccomodationRepository;

  setUp(() {
    mockAccomodationRepository = MockAccomodationRepository();
    accomodationLoaderBloc = AccomodationLoaderBloc(mockAccomodationRepository);
  });

  test(
    'initial state should be empty',
    () async {
      // assert
      expect(
        accomodationLoaderBloc.state,
        const AccomodationLoaderState.initial(),
      );
    },
  );

  test(
    'should emit AccomodationLoaderState.loadSuccess() if _iAccomodationRepository.getAccomodations() returns right of either with list of accomodations',
    () async {
      // arrange
      final tAccomodations = <Accomodation>[
        FakeAccomodation(),
        FakeAccomodation(),
      ];
      when(mockAccomodationRepository)
          .calls(const Symbol('getAccomodations'))
          .thenAnswer(
            (_) async => right<Failure, List<Accomodation>>(tAccomodations),
          );

      // assert later
      final expected = [
        const AccomodationLoaderState.loadInProgress(),
        AccomodationLoaderState.loadSuccess(tAccomodations),
      ];
      expectLater(
        accomodationLoaderBloc.stream,
        emitsInOrder(expected),
      );

      // act
      accomodationLoaderBloc.add(
        const AccomodationLoaderEvent.getAccomodationsStarted(),
      );
    },
  );

  tearDown(() {
    accomodationLoaderBloc.close();
  });
}
