import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/1BG.png"),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom())
        ]),
      )
      
    );
  }

  Widget _buildTop() {
    return const SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.assignment,
            size: 100,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("itTNG", style: TextStyle(
          color: Colors.black, fontSize: 32, fontWeight: FontWeight.w600
          ),
        ),
        const Text("Система складского учёта для IT-отделов", style: TextStyle(
          color: Colors.grey, fontSize: 16.7, fontWeight: FontWeight.w200
          ),
        ),
        _buildGreyText("Логин"),
        const SizedBox(height: 60),
        _buildGreyText("Пароль"),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.black),
    );
  }
  
  Widget _buildInputField(TextEditingController controller, {isPassword = false}) {
    return TextField();
  }
}