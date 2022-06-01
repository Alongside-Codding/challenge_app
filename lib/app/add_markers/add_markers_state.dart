part of 'add_markers_bloc.dart';

@freezed
class AddMarkersState with _$AddMarkersState {
  const factory AddMarkersState({
    required KtList<LatLng> tappedPoints,
    required KtList<double> distances,
  }) = _AddMarkersState;

  factory AddMarkersState.initial() => const AddMarkersState(
      tappedPoints: KtList.empty(), distances: KtList.empty());
}
