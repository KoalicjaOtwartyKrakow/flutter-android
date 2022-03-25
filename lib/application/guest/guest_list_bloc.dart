import 'package:bloc/bloc.dart';
import 'package:flutter_android/infrastructure/guest/guest_repository.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'guest_list_bloc.freezed.dart';

part 'guest_list_event.dart';

part 'guest_list_state.dart';

@injectable
class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
  final GuestRepository _guestRepository;

  GuestListBloc(
    this._guestRepository,
  ) : super(const GuestListState.initial()) {}
}
