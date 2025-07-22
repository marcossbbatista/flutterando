import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  final int index;

  const MyExpansionTile({super.key, required this.index});

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  bool _isExpanded = false;
  late Animation<double> _turnAnimation;
  late Animation<double> _heightFactorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _turnAnimation = Tween<double>(begin: 0.0, end: 0.5).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _heightFactorAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
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
    return Column(
      children: [
        ListTile(
          title: Text('My expansion tile ${widget.index}'),
          trailing: RotationTransition(
            turns: _turnAnimation,
            child: const Icon(Icons.expand_more),
          ),
          onTap: _toggleExpansion,
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: _heightFactorAnimation.value,
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
