
import 'package:flutter/material.dart';

import 'webViewContent.dart';

void main() => runApp(WebViewMain());

class WebViewMain extends StatefulWidget{
  @override
  _MyWebViewMainState createState() => _MyWebViewMainState();
}

class _MyWebViewMainState extends State<WebViewMain>{

  List url = ['https://www.google.com','https://in.yahoo.com/?p=us','https://www.facebook.com/','https://www.oneindia.com/'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
      ),
      body: ListView.builder(
        itemCount: url.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text(url[index]),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> webViewContent(url[index])));},
            ),
          );
        },
      ),
    );
  }

}