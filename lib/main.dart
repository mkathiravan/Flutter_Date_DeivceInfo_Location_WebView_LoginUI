import 'package:flutter/material.dart';
import 'package:flutterui3/deviceInfo.dart';
import 'package:flutterui3/loginScreen.dart';
import 'package:flutterui3/views/LocationMainView.dart';

import 'DateTimePicker.dart';
import 'WebViewHome.dart';
import 'calenderView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Hello Flutter Master',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                textBaseline: TextBaseline.alphabetic
            ),),
          onPressed: () {
            print("Pressed on a RaisedButton");
          },
        ),
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            Center(
              child: MaterialButton(
                height: 58,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12)),
                padding: EdgeInsets.all(12.0),
                child: Text("Login Screen Design"),
                color: Colors.indigo,
                textColor: Colors.white,
                splashColor: Colors.grey,
                //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              padding: EdgeInsets.all(12.0),
              child: Text("Flutter WebView"),
              color: Colors.indigo,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return WebViewMain();
                }));
              },
            ),

            const SizedBox(height: 30),
            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              padding: EdgeInsets.all(12.0),
              child: Text("Flutter Location Service"),
              color: Colors.indigo,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LocationMainView();
                }));
              },
            ),

            const SizedBox(height: 30),
            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              padding: EdgeInsets.all(12.0),
              child: Text("Device Information"),
              color: Colors.indigo,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DeviceInfo();
                }));
              },
            ),


            const SizedBox(height: 30),
            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              padding: EdgeInsets.all(12.0),
              child: Text("Rounded Date Picker"),
              color: Colors.indigo,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CalenderView();
                }));
              },
            ),

            const SizedBox(height: 30),
            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              padding: EdgeInsets.all(12.0),
              child: Text("Date_Time_Picker"),
              color: Colors.indigo,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DateTimePicker();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }

}
