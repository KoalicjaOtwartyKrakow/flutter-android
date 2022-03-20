import 'package:dartz/dartz.dart';
import 'package:flutter_android/models/auth_user.dart';

import '../../models/failure.dart';

abstract class IAuthFacade {
  Future<Option<AuthUser>> getSignedInUser();

  // Return true if new user to display initial loading animation and interests page, else false
  Future<Either<Failure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
