import 'package:flutter/material.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('it',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
        ),
        Text('TNG',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 40,
          color: Colors.deepPurpleAccent,
        ),
        ),
      ],
    );
  }
}