import 'package:flutter/material.dart';
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
          Center(
            child: Container(
              margin: const EdgeInsets.all(22),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Colors.white,
                boxShadow: [
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
                    const Text(
                      'Система складского учёта для',
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
                    const SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Введите логин',
                        border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Введите пароль',
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('Забыли пароль?', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                    ),
                    SizedBox(height: 50,),
                    Container(
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
                    ),
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

