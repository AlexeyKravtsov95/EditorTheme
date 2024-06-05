import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 60,
        backgroundImage: const AssetImage('assets/images/avatar.jpeg'),
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.black.withOpacity(0.5),
          child: const Text(
            'Edit',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
