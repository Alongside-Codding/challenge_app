part of 'get_user_location_bloc.dart';

@freezed
class GetUserLocationState with _$GetUserLocationState {
  const factory GetUserLocationState.inProgress() = _InProgress;
  const factory GetUserLocationState.initial() = _Initial;
  const factory GetUserLocationState.success(
      {required LocationData locationData}) = Success;
}
