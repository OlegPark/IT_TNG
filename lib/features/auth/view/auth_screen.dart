import 'package:flutter/material.dart';
import 'package:it_tng/UI/theme/theme.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Theme: darkTheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
            _header(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context){
    return Column(
      children: [
        Text("Welcom Back"),
        Text("Enter your credential to login"),
      ],
    );
  }
}