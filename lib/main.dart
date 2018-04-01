import 'package:borkbre/searcher.dart';
import 'package:borkbre/searcher_button.dart';
import 'package:borkbre/searcher_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
final Color GRADIENT_TOP = const Color(0xFFF5F5F5);
final Color GRADIENT_BOTTOM = const Color(0xFFE8E8E8);
class MyApp extends StatefulWidget {
  final Searcher state;
  MyApp() : state = new Searcher();
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String query = "";
  void searchVal(val){
    setState((){
      query = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Borkbre',
        home: new Scaffold(
            body: new Container(
              color: const Color(0xFF137BB1),
          child: new Center(
              child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'HELP ME PRONOUNCE',
                      style: new TextStyle(
                        fontSize: 12.0,
                        letterSpacing: 1.0,
                        color: const Color(0xFF70B0D4),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                  ],
                ),
              ),
              new SearcherPage(
                searchVal: searchVal,
              ),
              new Expanded(
                child: new Container(),
              ),
              new SearcherButton(
                query: query,
                state: widget.state.currentState,
              )
            ],
          )),
        )));
  }
}
