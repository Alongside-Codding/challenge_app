import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:latlong2/latlong.dart';

part 'add_markers_event.dart';
part 'add_markers_state.dart';
part 'add_markers_bloc.freezed.dart';

@injectable
class AddMarkersBloc extends Bloc<AddMarkersEvent, AddMarkersState> {
  AddMarkersBloc() : super(AddMarkersState.initial()) {
    on<AddMarkersEvent>((event, emit) async {
      event.map<FutureOr<void>>(
        add: (e) {
          emit(state.copyWith(
            tappedPoints: state.tappedPoints.plusElement(e.latLng),
          ));
        },
        updateDistance: (e) {
          emit(state.copyWith(
            distances: e.distances,
          ));
        },
      );
    });
  }
}
