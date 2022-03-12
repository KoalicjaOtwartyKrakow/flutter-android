import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'accomodation_loader_bloc.freezed.dart';
part 'accomodation_loader_event.dart';
part 'accomodation_loader_state.dart';

class AccomodationLoaderBloc
    extends Bloc<AccomodationLoaderEvent, AccomodationLoaderState> {
  AccomodationLoaderBloc() : super(const AccomodationLoaderState.initial()) {
    on<AccomodationLoaderEvent>((event, emit) async {
      await event.map(
        started: (_) {},
        getAccomodationsStarted: (e) async {},
        accomodationsReceived: (e) {},
      );
    });
  }
}
