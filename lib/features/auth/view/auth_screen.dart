import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/1BG.png"),
        fit: BoxFit.cover,
        )
      ),
      child: buildForm(),
    );
  }

  Widget buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("itTNG", style: TextStyle(
          color: Colors.cyanAccent, fontSize: 32, fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}