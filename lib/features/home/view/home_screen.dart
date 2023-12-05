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
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check, color: Colors.grey),
                        label: Text('Логин', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                        label: Text('Пароль', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
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
                        borderRadius: BorderRadius.circular(30),
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