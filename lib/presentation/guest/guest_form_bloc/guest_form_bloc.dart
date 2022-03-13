import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../infrastructure/guest/guest_repository.dart';
import '../../../models/child_age.dart';
import '../../../models/dto/guest_dto.dart';
import '../../../models/failure.dart';
import '../../../infrastructure/api_client.dart';
import '../../../models/guest.dart';
import '../submit_failure.dart';

part 'guest_form_event.dart';
part 'guest_form_state.dart';
part 'guest_form_bloc.freezed.dart';

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
