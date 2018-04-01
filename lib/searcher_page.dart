import 'package:flutter/material.dart';

class SearcherPage extends StatefulWidget {
  final Function searchVal;

  SearcherPage({this.searchVal});
  @override
  _SearcherPageState createState() => new _SearcherPageState();
}

class _SearcherPageState extends State<SearcherPage> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: new TextField(
        style: new TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
        autofocus: true,
        onChanged: (val) => widget.searchVal(val),
        decoration: new InputDecoration(
          border: InputBorder.none
        ),
      ),
    );
  }
}
