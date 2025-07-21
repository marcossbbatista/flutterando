import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  final int index;

  const MyExpansionTile({super.key, required this.index});

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('My expansion tile ${widget.index}'),
          trailing: AnimatedRotation(
            turns: isExpanded ? 0.5 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: const Icon(Icons.expand_more),
          ),
          onTap: () => setState(() => isExpanded = !isExpanded),
        ),
        ClipRect(
          child: AnimatedAlign(
            alignment: Alignment.topCenter,
            heightFactor: isExpanded ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: Column(
              children: [
                const FlutterLogo(size: 40),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet. Qui fuga error et dolorem blanditiis est cumque dolor. '
                    'Nam voluptas quaerat in unde mollitia qui aperiam excepturi et amet reprehenderit qui impedit corrupti. '
                    'Qui debitis internos quo inventore neque qui eius illum et voluptas quae a nemo doloremque.'
                    'Ea rerum delectus non sunt voluptatem ut consequuntur quisquam sed omnis asperiores. '
                    'Eum repellat delectus 33 dolor velit ut quod nihil.'
                    'Et magni omnis ut animi galisum sed sunt aliquam aut provident obcaecati qui rerum omnis. '
                    'Vel odio similique cum soluta facilis aut omnis eius et eligendi nisi aut rerum cumque ut accusamus '
                    'aspernatur et distinctio magni.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
