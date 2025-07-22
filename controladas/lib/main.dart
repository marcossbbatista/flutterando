import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<double> _widthAnimation;
  late Animation<double> _radiusAnimation;
  bool _animated = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController.addListener(() {
      setState(() {});
    });

    _widthAnimation = Tween<double>(
      begin: 60,
      end: 100,
    ).animate(_animationController);

    _radiusAnimation = Tween<double>(
      begin: 30,
      end: 0,
    ).animate(_animationController);
  }

  void _toggleAnimation() {
    setState(() {
      _animated = !_animated;
      if (_animated) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Desafio do Botão Flutuante',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 1500),
            alignment: _animated ? Alignment.topCenter : Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: _toggleAnimation,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  width: _widthAnimation.value,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(_radiusAnimation.value),
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
