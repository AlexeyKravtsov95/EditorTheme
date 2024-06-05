import 'package:flutter/material.dart';

class MedalWidget extends StatelessWidget {
  const MedalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('🥇', style: TextStyle(fontSize: 32)),
        SizedBox(width: 16),
        Text('🥇', style: TextStyle(fontSize: 32)),
        SizedBox(width: 16),
        Text('🥉', style: TextStyle(fontSize: 32)),
        SizedBox(width: 16),
        Text('🥈', style: TextStyle(fontSize: 32)),
        SizedBox(width: 16),
        Text('🥉', style: TextStyle(fontSize: 32)),
      ],
    );
  }
}
