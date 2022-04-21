import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../infrastructure/guest/guest_repository.dart';
import '../../../models/dto/guest_dto.dart';
import '../../../models/failure.dart';

part 'guest_form_bloc.freezed.dart';

part 'guest_form_event.dart';
part 'guest_form_state.dart';

@injectable
class GuestFormBloc extends Bloc<GuestFormEvent, GuestFormState> {

  final GuestRepository guestRepository;

  GuestFormBloc(this.guestRepository) : super(const GuestFormState.initial()) {
    on<GuestFormEvent>((event, emit) async {
      (await guestRepository.postGuest(event.guest)).fold(
            (l) => emit(GuestFormState.submitFailure(l)),
            (_) => emit(const GuestFormState.submitSuccess()),
      );
    });
  }
}
