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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Learning Text Widget'),
      ),
      body: Container(
        child: Column(children: [firstContainer(), secondContainer(),thirdContainer()]),
      ),
    );
  }
}

class firstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 200, color: Colors.lightBlueAccent);
  }
}

class secondContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: Row(
        children: [
          Container(width: 200, color: Colors.deepPurpleAccent),
          Container(width: 200, color: Colors.teal),
        ],
      ),
    );
  }
}

class thirdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[50],
      child: Row(
        children: [
          Container(width: 200,color: Colors.brown, child: Center(child: Text('Sajida'))),

          Container(width: 200,color: Colors.deepPurple, child: Center(child: Text('Arshu'))),
          Container(color: Colors.teal,child:  Center(child: Text('Sohil'))),
        ],
      ),
    );
  }
}
