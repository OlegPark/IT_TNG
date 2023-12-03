import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/1BG.png"),
                alignment: Alignment.topCenter
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 0, 87, 201),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 400,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}