import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebPage extends StatelessWidget {
  WebPage({this.title, this.url});
  final title; final url;
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        appBar: AppBar(backgroundColor: Colors.deepOrange,
          title: Text(title),
        ),
        url: url,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.black,
          child: Center(
            child: SpinKitChasingDots(
              color: Colors.tealAccent, size: 150,),
          ),
        ));
//        bottomNavigationBar: BottomNavigationBar(
//          items: const <BottomNavigationBarItem>[
//            BottomNavigationBarItem(
//              icon: Icon(
//                Icons.arrow_forward,
//              ),
//              title: Text(''),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.arrow_back),
//              title: Text(''),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.apps),
//              title: Text(''),
//            ),
//          ],
//          showSelectedLabels: false,
//          showUnselectedLabels: false,
//        ));
  }
}
