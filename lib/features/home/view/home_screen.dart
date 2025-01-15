import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Главное мени всех виджетов с виджетами'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('тут будут виджеты'
            ),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text('Авторизация >')),
              ),
            ),
            Divider(),
            Text('тут будут виджеты'
            ),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text('Вертикальный степпер >')),
              ),
            ),
            Divider(),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text('Вертикальный степпер >')),
              ),
            ),
            Divider(),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text('Вертикальный степпер >')),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}