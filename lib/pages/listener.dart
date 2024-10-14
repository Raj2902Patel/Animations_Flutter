import 'package:flutter/material.dart';
import 'package:implicit_animation/pages/tween.dart';

class ListenerPage extends StatefulWidget {
  const ListenerPage({super.key});

  @override
  State<ListenerPage> createState() => _ListenerPageState();
}

class _ListenerPageState extends State<ListenerPage> {
  int _downCounter = 0;
  int _upCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementUp(PointerEvent details) {
    updateLocation(details);
    setState(() {
      _upCounter++;
    });
  }

  void _incrementDown(PointerEvent details) {
    updateLocation(details);
    setState(() {
      _downCounter++;
    });
  }

  void updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Listener!"),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(
            const Size(300.0, 200.0),
          ),
          child: Listener(
            onPointerDown: _incrementDown,
            onPointerMove: updateLocation,
            onPointerUp: _incrementUp,
            child: ColoredBox(
              color: Colors.blueGrey.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$_downCounter presses\n ${_upCounter} releases'),
                  Text(
                      "The Cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})")
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TweenPage()));
        },
        child: Icon(Icons.flight),
      ),
    );
  }
}
