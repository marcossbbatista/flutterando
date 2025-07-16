import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool animated = false;

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
          // Área para o botão se mover
          AnimatedAlign(
            duration: const Duration(milliseconds: 1500),
            alignment: animated ? Alignment.topCenter : Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    animated = !animated;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  width: animated ? 100 : 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(animated ? 0 : 30),
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
