import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String? _selectedGender;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 20,
              children: [
                RowClass(label: 'First Name:'),
                RowClass(label: 'Last Name:'),
                Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: RadioListTile<String>(
                        title: Text("Male", style: TextStyle(fontSize: 14)),
                        value: "Male",
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: RadioListTile<String>(
                        title: Text("Female", style: TextStyle(fontSize: 14)),
                        value: "Female",
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                RowClass(label: 'Employee ID:'),
                RowClass(label: 'Designation:'),
                RowClass(label: 'Phone Number:'),
                SizedBox(width: 160),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 2,
            left: 24,
            child: Container(
              color: Colors.white,
              child: Text('Employee Details', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}

class RowClass extends StatelessWidget {
  final String label;
  const RowClass({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10, height: 10),
        Text(label),
        SizedBox(
          width: 160,
          height: 20,
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
