import 'package:geolocator/geolocator.dart';

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'dart:ui';

void main(){
  getPosition();
}

Future<void> getPosition() async {
    var currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(currentPosition);
  }