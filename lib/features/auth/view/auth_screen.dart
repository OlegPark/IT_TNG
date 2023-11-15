import 'package:flutter/material.dart';
import 'package:it_tng/UI/theme/theme.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/1BG.png"))
      ),
    );
  }
}