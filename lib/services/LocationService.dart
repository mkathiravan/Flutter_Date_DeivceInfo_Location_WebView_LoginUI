import 'dart:async';

import 'package:flutterui3/dataModel/UserLocation.dart';
import 'package:location/location.dart';

class LocationService
{
  UserLocation _currentLocation;
  Location locaiton = Location();

  StreamController<UserLocation> _locationController = StreamController<UserLocation>.broadcast();

  LocationService()
  {
    locaiton.requestPermission().then((granted)
    {
      if(granted != null)
        {
          locaiton.onLocationChanged().listen((locationData){
            if(locationData!= null)
              {
                _locationController.add(UserLocation(
                  latitude: locationData.latitude,
                  longitude: locationData.longitude,
                   time: locationData.time,
                ));
              }
          });
        }
    });
  }


  Stream<UserLocation> get locationStream => _locationController.stream;

  Future<UserLocation> getLocation() async
  {
    try{
      var userLocation = await locaiton.getLocation();
      _currentLocation = UserLocation(latitude: userLocation.latitude,longitude: userLocation.longitude, time: userLocation.time);
    }
    catch(e)
    {
      print('Could not get the location: $e');
    }

    return _currentLocation;
  }
}