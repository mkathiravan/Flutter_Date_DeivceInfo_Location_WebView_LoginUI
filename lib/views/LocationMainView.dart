import 'package:flutter/material.dart';
import 'package:flutterui3/dataModel/UserLocation.dart';
import 'package:flutterui3/services/LocationService.dart';
import 'package:provider/provider.dart';
import 'LocaitonView.dart';
void main() => runApp(LocationMainView());
class LocationMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(

        builder: (context) => LocationService().locationStream,
        child: MaterialApp(title: 'Flutter Location Service', home: HomeView()));
  }
}