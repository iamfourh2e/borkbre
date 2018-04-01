import 'package:borkbre/searcher.dart';
import 'package:flutter/material.dart';

class SearcherButton extends StatefulWidget {
  final SearcherState state;
  final String query;

  SearcherButton({this.query = "", this.state});

  @override
  _SearcherButtonState createState() => new _SearcherButtonState();
}

class _SearcherButtonState extends State<SearcherButton>
    with TickerProviderStateMixin {
  AnimationController buttonAnimationController;
  Animation buttonAnimation;

  @override
  void initState() {
    super.initState();
    buttonAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 150));
  }

  void dispose() {
    buttonAnimationController.dispose();
    super.dispose();
  }

  _isTyping() {
    print(buttonAnimationController.value);
    print(widget.query.length);
    return widget.query.length > 0;
  }

  @override
  Widget build(BuildContext context) {
    if (_isTyping()) {
      buttonAnimationController.reverse();
    } else {
      buttonAnimationController.forward();
    }
    return new Column(
      children: <Widget>[
        new Transform(
          transform: new Matrix4.translationValues(
              0.0, 200.0 * buttonAnimationController.value, 0.0),
          child: new FlatButton(
              splashColor: const Color(0x22000000),
              onPressed: () {},
              color: const Color(0xFF1CAEFF),
              child: new Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      widget.state == SearcherState.showResult
                          ? 'START NEW'
                          : 'SHOW RESULT',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ),
              )),
        )
      ],
    );
  }
}
