import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String dropdawn = "one";
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Drop dawn sample'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 189, left: 10),
              child: SizedBox(
                width: 300,
                child: DropdownButton<String>(
                  value: dropdawn,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 3,
                    color: Color(0xff075e55),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdawn = newValue!;
                    });
                  },
                  items: [
                    DropdownMenuItem(value: 'one', child: Text('one')),
                    DropdownMenuItem(value: 'two', child: Text('two')),
                    DropdownMenuItem(value: 'three', child: Text('three')),
                    DropdownMenuItem(value: 'four', child: Text('four')),
                    DropdownMenuItem(value: 'five', child: Text('five'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
