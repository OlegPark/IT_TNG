import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';

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