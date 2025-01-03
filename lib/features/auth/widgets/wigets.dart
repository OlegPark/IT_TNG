import 'package:flutter/material.dart';
import 'package:it_tng/UI/theme/theme.dart';

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
          color: blueButtonColor,
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
        color: blueButtonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(child: Text('Войти', style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),),),
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
      decoration: const InputDecoration(
        hintText: 'Введите логин',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10),
      ),
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
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Введите пароль',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Пароль не может быть пустым';
        }
        if (value.length < 8) {
          return 'Пароль должен быть не менее 8 символов';
        }
        if (!value.contains(RegExp(r'[A-Z]'))) {
          return 'Пароль должен содержать хотя бы одну заглавную букву';
        }
        if (!value.contains(RegExp(r'[a-z]'))) {
          return 'Пароль должен содержать хотя бы одну строчную букву';
        }
        if (!value.contains(RegExp(r'[0-9]'))) {
          return 'Пароль должен содержать хотя бы одну цифру';
        }
        return null; 
      },
    );
  }
}