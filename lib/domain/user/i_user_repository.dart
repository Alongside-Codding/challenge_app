import 'package:location/location.dart';

abstract class IUserRepository {
  Future<LocationData> getUserLocation();
}
