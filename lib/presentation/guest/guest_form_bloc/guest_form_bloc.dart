import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/api_client.dart';
import '../../../models/guest.dart';
import '../submit_failure.dart';

part 'guest_form_event.dart';
part 'guest_form_state.dart';
part 'guest_form_bloc.freezed.dart';


class GuestFormBloc extends Bloc<GuestFormEvent, GuestFormState> {

  @override
  GuestFormState get initialState => GuestFormState.initial();

  final ApiClient apiClient;

  GuestFormBloc(this.apiClient) : super(GuestFormState.initial()) {
    on<FullNameChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            fullName: event.fullNameStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<PhoneNumberChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            fullName: event.phoneNumberStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<EmailChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            email: event.emailStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<SubmitAddGuest>(
          (event, emit) async {
        emit(state.copyWith(
          isSubmitting: true,
          submitFailureOrSuccessOption: none(),
        ));

        final failureOrSuccess = await apiClient.postAGuest(Guest(
          fullName: state.fullName,
          phoneNumber: state.phoneNumber,
          email: state.email
        ));
        emit(state.copyWith(
          isSubmitting: false,
          submitFailureOrSuccessOption: some(failureOrSuccess),
        ));
      },
    );
  }
}
