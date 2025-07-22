import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isExpanded = false;
  double _width = 60;
  double _borderRadius = 30;
  Alignment _alignment = Alignment.bottomRight;

  void _toggleButton() {
    setState(() {
      _isExpanded = !_isExpanded;

      if (_isExpanded) {
        _width = 100;
        _borderRadius = 0;
        _alignment = Alignment.topCenter;
      } else {
        _width = 60;
        _borderRadius = 30;
        _alignment = Alignment.bottomRight;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Botão Animado',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 1500),
            alignment: _alignment,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: _toggleButton,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  width: _width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(_borderRadius),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
