import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mygrow_software_project/Model/address_class.dart';

import '../App_Manager/media_query_utils.dart';
import '../App_Manager/string_manager.dart';
import '../Map_Category/select_category_modepage.dart';
import '../widgets/category_widgets.dart';
import '../widgets/crane_bottom_custom_container.dart';
import 'good_screen1.dart';

class Cranes extends StatefulWidget {
  const Cranes({Key? key}) : super(key: key);

  @override
  State<Cranes> createState() => _CranesState();
}

class _CranesState extends State<Cranes> {
  final Completer<GoogleMapController> _controllerGoogleMap =
      Completer<GoogleMapController>();
  GoogleMapController? newGoogleMapController;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  Position? userCurrentPosition;
  var geolocator = Geolocator();

  LocationPermission? _locationPermission;

  checkIfLocationPermissionAllowed() async {
    _locationPermission = await Geolocator.requestPermission();
    if (_locationPermission == LocationPermission.denied) {
      _locationPermission = await Geolocator.requestPermission();
    }
  }

  locatedUserPosition() async {
    Position cPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    userCurrentPosition = cPosition;

    LatLng latLngPosition =
        LatLng(userCurrentPosition!.latitude, userCurrentPosition!.longitude);

    CameraPosition cameraPosition =
        CameraPosition(target: latLngPosition, zoom: 14);
    newGoogleMapController!
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    String humanReadableAddress =
        await GetReadAbleAddress.searchAddressforGeographicCoordinates(
            userCurrentPosition!, context);
    print(
        ".................................................................My current location is $humanReadableAddress");
  }

  @override
  initState() {
    super.initState();
    checkIfLocationPermissionAllowed();
  }

  File? _image;

  Future<void> _getImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(AppPadding.p8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final source = await showDialog<ImageSource>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text("Select Image Source"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, ImageSource.camera),
                                child: Text("Camera"),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, ImageSource.gallery),
                                child: Text("Gallery"),
                              ),
                            ],
                          ),
                        );
                        if (source != null) {
                          if (source == ImageSource.camera) {
                            await _getImageFromCamera();
                          } else {
                            await _getImageFromGallery();
                          }
                        }
                      },
                      child: Container(
                        height: Utils.getHeight(context) / 10,
                        width: Utils.getHeight(context) / 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                        child: _image != null
                            ? ClipOval(
                                child: Image.file(
                                  _image!,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Center(
                                child: Icon(
                                  Icons.add_a_photo,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                              ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectCategoryModeScreen(),));
                      },
                      child: Container(
                        height: Utils.getHeight(context) / 10,
                        width: Utils.getHeight(context) / 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Text(
                          "Mode",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Utils.getHeight(context) / 40),
                child: Container(
                  height: Utils.getHeight(context) / 2,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      _controllerGoogleMap.complete(controller);
                      newGoogleMapController = controller;

                      locatedUserPosition();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: Utils.getHeight(context) / 17,
              ),
              Container(
                height: Utils.getHeight(context) / 1.95,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: Utils.getHeight(context) / 17),
                      child: Container(
                        height: Utils.getHeight(context) / 1.95,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    ClickableContainersRow(),
                    Padding(
                      padding:
                          EdgeInsets.only(top: Utils.getHeight(context) / 12.8),
                      child: Container(
                        color: Colors.white,
                        height: Utils.getHeight(context) / 8.75,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Selected Service Related Icons",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: Utils.getHeight(context) / 4.90),
                      child: Container(
                        color: Colors.white,
                        height: Utils.getHeight(context) / 3.5,
                        width: double.infinity,
                        child: Padding(
                          padding:
                              EdgeInsets.all(Utils.getHeight(context) / 50),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("PickUp"),
                                  Expanded(
                                    child: TextField(
                                      readOnly: true,
                                      onTap: () {
                                        setState(() {});
                                      },
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 5))),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Custom_TextField(
                                text: "Destination",
                                function: () {},
                              )),
                              Expanded(
                                  child: Custom_TextField(
                                text: "Your Price/Hour",
                                function: () {},
                              )),
                              Expanded(
                                  child: Custom_TextField(
                                text: "Instruction if Any*",
                                function: () {},
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GoodScreen1(),
                        ));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: AppFontSize.s18),
                  )),
              SizedBox(
                height: Utils.getHeight(context) / 200,
              ),
              Container(
                width: double.infinity,
                height: Utils.getHeight(context) / 14.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "Find Driver/Vehicle",
                    style: TextStyle(
                        fontSize: AppFontSize.s24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: Utils.getHeight(context) / 16.5,
                width: double.infinity,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: ContainerRow(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Custom_TextField extends StatelessWidget {
  String text;
  void Function()? function;
  Custom_TextField({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style:
              TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: TextField(
            readOnly: true,
            onTap: function,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 5))),
          ),
        )
      ],
    );
  }
}
