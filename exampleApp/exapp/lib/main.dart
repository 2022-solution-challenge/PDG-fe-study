// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:geolocator/geolocator.dart';
void main() {
  runApp(MapSample());
}
 

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

// class GeoLocatorService{
  
// }
class MapSampleState extends State<MapSample> {

  // Future<Position> getLocation() async{
  //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //   return position;
  // }

  // Future<Position> position = getLocation();
  @override
  Widget build(BuildContext context){
    // ignore: sized_box_for_whitespace
    return 
    MaterialApp(
      home: Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      width : 300,
      height: 300,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.5,
            126.9294254
          ),
          zoom: 18,
        ) 
      ),
      ),
    );
  }

}