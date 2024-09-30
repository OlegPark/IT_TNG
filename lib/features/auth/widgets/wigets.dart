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

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(193, 78, 7, 255), 
            Color.fromARGB(255, 0, 87, 201),
          ],
        ),
      ),
      child: Center(child: Text('Войти', style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),),),
    );
  }
}

class FormPassword extends StatelessWidget {
  const FormPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Введите пароль',
        border: OutlineInputBorder()
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Введите логин',
        border: OutlineInputBorder()
      ),
    );
  }
}
