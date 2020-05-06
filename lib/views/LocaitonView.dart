import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutterui3/dataModel/UserLocation.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);

    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd hh:mm:ss');
    String formatted = formatter.format(now);

    return Scaffold(
      body: Center(
        child: Text(
            'Location: Lat:${userLocation.latitude} , \n \n Long: ${userLocation.longitude}, \n \n Time: ${formatted}'),
      ),
    );
  }
}