import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;

  Future<void> _signInWithGoogle(dynamic state) async {
    emit(
      const AuthState.authInProgress(),
    );
    final failureOrSuccess = await _iAuthFacade.signInWithGoogle();

    emit(
      failureOrSuccess.fold(
        (_) => const AuthState.unAuthenticated(),
        (_) => const AuthState.authenticated(),
      ),
    );
  }

  AuthBloc(this._iAuthFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userOption = await _iAuthFacade.getSignedInUser();
          emit(
            userOption.fold(
              () => const AuthState.unAuthenticated(),
              (_) => const AuthState.authenticated(),
            ),
          );
        },
        signedOut: (e) async {
          await _iAuthFacade.signOut();
          emit(
            const AuthState.unAuthenticated(),
          );
        },
        signInWithGooglePressed: (e) async {
          await state.maybeMap(
            unAuthenticated: _signInWithGoogle,
            orElse: () {},
          );
        },
      );
    });
  }
}
