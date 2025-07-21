import 'package:flutter/material.dart';
import 'package:implicita_1/myExpansionTile.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyScrollView', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) => MyExpansionTile(index: index),
      ),
    );
  }
}
