
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class webViewContent extends StatefulWidget
{
  String url;
  webViewContent(this.url);

  @override
  _WebViewContentState createState() => _WebViewContentState();
}

class _WebViewContentState extends State<webViewContent>{
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: Stack(
        children:[
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String finished){
              setState(() {
                loading = false;
              });
            },
          ),
          loading?Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          ): Container(
            color: Colors.transparent,
          )
        ],
      )),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

}