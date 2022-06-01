part of 'add_markers_bloc.dart';

@freezed
class AddMarkersEvent with _$AddMarkersEvent {
  const factory AddMarkersEvent.add({
    required LatLng latLng,
  }) = _Add;
  const factory AddMarkersEvent.updateDistance(
      {required KtList<double> distances}) = _UpdateDistance;
}
