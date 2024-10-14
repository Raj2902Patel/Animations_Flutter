import 'package:flutter/material.dart';
import 'package:implicit_animation/pages/second_page.dart';

class ImplicitAnimationPage extends StatefulWidget {
  const ImplicitAnimationPage({super.key});

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  double myAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.withOpacity(0.5),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 20,
            left: 10,
            right: 100,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              icon: Icon(Icons.flag),
              label: Text("Next Page"),
            ),
          ),
          Positioned(
            top: -170,
            left: 0,
            right: 0,
            child: AnimatedRotation(
              curve: Curves.fastEaseInToSlowEaseOut,
              duration: const Duration(seconds: 3),
              turns: myAngle,
              child: CircleAvatar(
                backgroundColor: Colors.brown.withOpacity(0.31),
                radius: 210,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -81,
                      left: (MediaQuery.of(context).size.width / 2) - 200,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 81,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => myAngle -= 1),
        child: const Icon(Icons.rotate_right_outlined),
      ),
    );
  }
}
