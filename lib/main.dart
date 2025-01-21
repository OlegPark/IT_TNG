import 'package:flutter/material.dart';
import 'package:it_tng/features/listv/list.dart';
import 'package:it_tng/features/timer/timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListvFile(),
    );
  }
}


class ListvFile extends StatelessWidget {
  const ListvFile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Otus Flutter Scroll Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double shift = 0.0;
  double progress = 0.0;

  void _incrementCounter() {
    setState(() {
      shift += 10;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    ),
    body: Stack(
      children: [
        // Example00ViewPort(),
        // Example01SingleChild(),
        // Example02ListView(),
        Example03ListViewBuilder(),
        // Example04GridView(),
        // Example05CustomScrollView(),
        // Example06NestedScroll(),
        // Example07Reorderable(),
        // Example08Scrolls(),
        // Example09Draggable(),
        // Example10TwoDimensional(),
        // Example11InteractiveViewer(),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      child: const Icon(Icons.add),
    ),
  );
}


