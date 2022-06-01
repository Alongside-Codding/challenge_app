import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_app/domain/user/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

part 'get_user_location_bloc.freezed.dart';
part 'get_user_location_event.dart';
part 'get_user_location_state.dart';

@injectable
class GetUserLocationBloc
    extends Bloc<GetUserLocationEvent, GetUserLocationState> {
  final IUserRepository iUserRepository;

  GetUserLocationBloc(this.iUserRepository) : super(const _Initial()) {
    on<GetUserLocationEvent>((event, emit) async {
      await event.map<FutureOr<void>>(started: (e) async {
        emit(const GetUserLocationState.inProgress());

        LocationData locationData = await iUserRepository.getUserLocation();
        emit(GetUserLocationState.success(locationData: locationData));
      });
    });
  }
}
