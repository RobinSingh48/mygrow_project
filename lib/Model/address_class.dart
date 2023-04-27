import 'package:geolocator/geolocator.dart';
import 'package:mygrow_software_project/Model/reverse_geocoding_api.dart';
import 'package:mygrow_software_project/info_handler/info_app.dart';
import 'package:mygrow_software_project/map/key.dart';
import 'package:provider/provider.dart';

import 'directions.dart';

class GetReadAbleAddress {
  static Future<String> searchAddressforGeographicCoordinates(
      Position position, context) async {
    String humanReadableAddress = "";
    String apiUrl =
        "https://maps.googleapis.com/maps/api/geocode/json?${position.latitude},${position.longitude}&key=$key";
    var requestResponse = await ReverseGeocodingApi.getReverseData(apiUrl);
    if (requestResponse != "Something wrong") {
      humanReadableAddress = requestResponse["results"][0]["formatted_address"];

      Directions userPickUpAddress = Directions();
      userPickUpAddress.locationLatitude = position.latitude;
      userPickUpAddress.locationLongitude = position.longitude;
      userPickUpAddress.locationName = humanReadableAddress;

      Provider.of<AppInfo>(context).updatePickupLocationAddress(userPickUpAddress);
    }
    return humanReadableAddress;
  }
}
