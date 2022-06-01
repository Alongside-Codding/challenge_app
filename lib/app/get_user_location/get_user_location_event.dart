part of 'get_user_location_bloc.dart';

@freezed
class GetUserLocationEvent with _$GetUserLocationEvent {
  const factory GetUserLocationEvent.started() = _Started;
}