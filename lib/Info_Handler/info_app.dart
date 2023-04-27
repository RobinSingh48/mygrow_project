import 'package:flutter/cupertino.dart';
import 'package:mygrow_software_project/Model/directions.dart';

class AppInfo extends ChangeNotifier {
  Directions? userPickupLocation;

  void updatePickupLocationAddress(Directions pickAddress) {
    userPickupLocation = pickAddress;
    notifyListeners();
  }
}
