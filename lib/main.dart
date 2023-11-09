import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:it_tng/generated/l10n.dart';

import 'features/auth/view/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(3, 37, 65, 1)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AuthWidget(),
    );
  }
  
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  
  final int _bonus = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).hello, 
              style: TextStyle(fontSize: 32),
            ),
            Text(
              S.of(context).goodbye, 
              style: TextStyle(fontSize: 32),
            ),
            Text(
              S.of(context).youReceiveNBonus(_bonus), 
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}

