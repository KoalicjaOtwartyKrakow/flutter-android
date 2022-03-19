import 'package:bloc/bloc.dart';
import 'package:flutter_android/application/host/host_event.dart';
import 'package:flutter_android/application/host/host_state.dart';
import 'package:flutter_android/infrastructure/host/host_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class HostBloc extends Bloc<HostEvent, HostState> {
  final HostRepository _repository;

  HostBloc(this._repository) : super(const HostState.initial()) {
    on<HostEvent>((event, emit) async {
      if (event == const HostEvent.downloadContract()) {
        (await _repository.downloadContract()).fold(
          (l) => emit(const HostState.downloadFailure()),
          (r) => emit(HostState.downloadSuccess(r)),
        );
      }
    });
  }
}
