import 'package:challenge_app/domain/user/i_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@Injectable(as: IUserRepository)
class UserRepository implements IUserRepository {
  @override
  Future<LocationData> getUserLocation() async {
    final Location location = Location();
    // bool serviceEnabled;
    PermissionStatus permissionGranted;
    location.enableBackgroundMode(enable: true);

    // serviceEnabled = await location.serviceEnabled();
    // if (!serviceEnabled) {
    //   serviceEnabled = await location.requestService();
    //   if (!serviceEnabled) {}
    // }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
      } else {}
    }

    LocationData locationData = await location.getLocation();

    return locationData;
  }
}
