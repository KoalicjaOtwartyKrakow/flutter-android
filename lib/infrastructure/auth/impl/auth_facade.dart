import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/auth/i_auth_facade.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:flutter_android/models/auth_user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final GoogleSignIn _googleSignIn;
  Option<AuthUser> _authUser = none();

  AuthFacade(this._googleSignIn);

  @override
  Future<Option<AuthUser>> getSignedInUser() async => _authUser;

  @override
  Future<Either<Failure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const Failure.canceledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      _authUser = optionOf(
        AuthUser(
          authToken: googleAuthentication.accessToken ?? "",
        ),
      );

      return right(unit);
    } on Exception catch (_) {
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    _authUser = none();
  }
}
