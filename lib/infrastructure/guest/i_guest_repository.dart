import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../models/guest.dart';
import '../../models/failure.dart';

abstract class IGuestRepository {
  Future<Either<Failure, Guest>> postGuest(Guest guest);
}