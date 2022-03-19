import 'package:dartz/dartz.dart';

import '../../models/accomodation.dart';
import '../../models/failure.dart';

abstract class IAccomodationRepository {
  Future<Either<Failure, List<Accommodation>>> getAccommodations();
}
