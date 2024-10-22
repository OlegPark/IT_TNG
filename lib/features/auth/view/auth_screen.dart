import 'package:flutter/material.dart';
import 'package:it_tng/UI/theme/theme.dart';
import '../../../generated/l10n.dart';
import '../widgets/wigets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1BG.png"),
                  alignment: Alignment.topCenter),
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  blueColor,
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.5, 0.5),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              height: 450,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TitleAuth(),
                    Text(
                      S.of(context).hello,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text(
                      'Система складского учёта для', //нужно доделать это и настроить генерацию для новых слов 
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      'IT-отделов',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Логин',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FormLogin(),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Пароль',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FormPassword(),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonLogin(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
