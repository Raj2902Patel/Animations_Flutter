import 'package:flutter/material.dart';
import 'package:implicit_animation/pages/listener.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color customColor = Colors.blueGrey;
  double customHeight = 100;
  double customWidth = 100;
  double customOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Second Page!"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 3),
                height: customHeight,
                width: customHeight,
                decoration: BoxDecoration(
                  color: customColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      customHeight = 200;
                      customWidth = 200;
                    });
                  },
                  child: Text(
                    "Size : 2x",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      customHeight = 100;
                      customWidth = 100;
                    });
                  },
                  child: Text(
                    "Size : 1x",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      customColor = Colors.red.withOpacity(0.5);
                    });
                  },
                  child: Text(
                    "Color : Red",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      customColor = Colors.yellow.withOpacity(0.5);
                    });
                  },
                  child: const Text(
                    "Color : Yellow",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ListenerPage()));
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
