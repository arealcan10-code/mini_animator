import 'package:flutter/material.dart';

void main() {
  runApp(const MiniAnimatorApp());
}

class MiniAnimatorApp extends StatelessWidget {
  const MiniAnimatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Animator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AnimatorHomePage(),
    );
  }
}

class AnimatorHomePage extends StatefulWidget {
  const AnimatorHomePage({super.key});

  @override
  State<AnimatorHomePage> createState() => _AnimatorHomePageState();
}

class _AnimatorHomePageState extends State<AnimatorHomePage> {
  double posX = 100;
  double posY = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mini Animator")),
      body: Stack(
        children: [
          Positioned(
            left: posX,
            top: posY,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  posX += details.delta.dx;
                  posY += details.delta.dy;
                });
              },
              child: const Icon(Icons.person, size: 80, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
