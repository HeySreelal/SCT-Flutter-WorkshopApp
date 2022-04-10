import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Workshop Demo App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // A count variable

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workshop App 🎉"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // increment
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "$count 🔥",
          style: const TextStyle(
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}
