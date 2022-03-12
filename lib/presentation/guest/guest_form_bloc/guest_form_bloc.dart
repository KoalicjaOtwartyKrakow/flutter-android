import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../submit_failure.dart';

part 'guest_form_event.dart';
part 'guest_form_state.dart';
part 'guest_form_bloc.freezed.dart';


class GuestFormBloc extends Bloc<GuestFormEvent, GuestFormState> {

  @override
  GuestFormState get initialState => GuestFormState.initial();



  GuestFormBloc() : super(GuestFormState.initial()) {
    on<FullNameChanged>((event, emit) {
      // TODO: implement event handler
    });
  }
}
