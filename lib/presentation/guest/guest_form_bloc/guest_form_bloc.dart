import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../infrastructure/guest/i_guest_repository.dart';
import '../../../models/child_age.dart';
import '../../../models/failure.dart';
import '../../../models/guest.dart';

part 'guest_form_event.dart';
part 'guest_form_state.dart';
part 'guest_form_bloc.freezed.dart';

@injectable
class GuestFormBloc extends Bloc<GuestFormEvent, GuestFormState> {

  @override
  GuestFormState get initialState => GuestFormState.initial();

  final IGuestRepository guestRepository;

  GuestFormBloc(this.guestRepository) : super(GuestFormState.initial()) {
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
            phoneNumber: event.phoneNumberStr,
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
    on<PeopleInGroupChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            peopleInGroup: event.peopleInGroup,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<AdultMaleCountChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            adultMaleCount: event.adultMaleCount,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<AdultFemaleCountChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            adultFemaleCount: event.adultFemaleCount,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<ChildrenChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            children: event.childrenAges,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<HavePetsChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            havePets: event.havePets,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<PetsDescriptionChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            petsDescription: event.petsDescriptionStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<SpecialNeedsChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            specialNeeds: event.specialNeedsStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<HowLongToStayChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            howLongToStay: event.howLongToStayStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<FinanceStatusChanged>(
          (event, emit) {
        emit(
          state.copyWith(
            financeStatus: event.financeStatusStr,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<SubmitAddGuest>(
          (event, emit) async {

          Either<Failure, Guest>? failureOrSuccess;

          Guest guest = Guest(
            fullName: state.fullName,
            phoneNumber: state.phoneNumber,
            email: state.email,
            peopleInGroup: state.peopleInGroup,
            adultMaleCount: state.adultMaleCount,
            adultFemaleCount: state.adultFemaleCount,
            children: state.children,
            havePets: state.havePets,
            petsDescription: state.petsDescription,
            specialNeeds: state.specialNeeds,
            foodAllergies: state.foodAllergies,
            meatFreeDiet: state.meatFreeDiet,
            glutenFreeDiet: state.glutenFreeDiet,
            lactoseFreeDiet: state.lactoseFreeDiet,
            financeStatus: state.financeStatus,
            howLongToStay: state.howLongToStay,
            desiredDestination: state.desiredDestination,
            priorityStatus: state.priorityStatus,
            priorityDate: state.priorityDate
          );

          if (guest.isValidated()) {
            emit(state.copyWith(
              isSubmitting: true,
              submitFailureOrSuccessOption: none(),
          ));

          failureOrSuccess = await guestRepository.postGuest(guest);
        }

        emit(state.copyWith(
          isSubmitting: false,
          showErrorMessages: AutovalidateMode.always,
          submitFailureOrSuccessOption: optionOf(
            failureOrSuccess?.fold(
                  (failure) => left(failure),
                  (_) => right(guest),
            ),
          ),
        ));
      },
    );
  }
}
