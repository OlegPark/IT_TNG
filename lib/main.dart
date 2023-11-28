import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:it_tng/generated/l10n.dart';
import 'features/auth/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      initialRoute: 'auth_screen',
      routes: {
        '/auth_screen': (context) => const AuthWidget(),
      },
    );
  }
  
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({
//     super.key,
//   });
  
//   final int _bonus = 50;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               S.of(context).hello, 
//               style: TextStyle(fontSize: 32),
//             ),
//             Text(
//               S.of(context).goodbye, 
//               style: TextStyle(fontSize: 32),
//             ),
//             Text(
//               S.of(context).youReceiveNBonus(_bonus), 
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.w700,
//               ),
//               textAlign: TextAlign.center,
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }

