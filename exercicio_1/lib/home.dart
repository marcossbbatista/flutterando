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
    int opcaoSelecionada = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employee Details',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 12,
          children: [
            RowTextField(title: 'First Name:'),
            RowTextField(title: 'Last Name:'),
            /*Row(
              children: [
                RadioListTile<int>(
                  title: Text('Male'),
                  value: 1,
                  groupValue: opcaoSelecionada,
                  onChanged: (value) {
                    setState(() {
                      opcaoSelecionada = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Female'),
                  value: 2,
                  groupValue: opcaoSelecionada,
                  onChanged: (value) {
                    setState(() {
                      opcaoSelecionada = value!;
                    });
                  },
                ),
              ],
            ),*/
            RowTextField(title: 'Employee ID:'),
            RowTextField(title: 'Designation:'),
            RowTextField(title: 'Phone Number:'),
          ],
        ),
      ),
    );
  }

  Row RowTextField({required String title}) {
    return Row(
      spacing: 8,
      children: [
        Text(title, style: TextStyle(fontSize: 18)),
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
