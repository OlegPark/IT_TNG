import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
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
                  padding: EdgeInsets.only(left: 28.0, right: 28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
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
                      ),
                      Text(
                        'Система складского учёта для',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'IT-отделов',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(10),
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check, color: Colors.grey),
                            label: Text('Логин', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(10),
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                            label: Text('Пароль', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),),
                          ),
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
          ),
        ],
      ),
    );
  }
}