import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  int _counter = 0;
  var emailText = TextEditingController();
  var passText = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var names = ['ram', 'aadi', 'anuj', 'pratham', 'john'];

    var time = DateTime.now();
    // here date time class inisilized

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Learning Flutter'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'select date', 
            style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () async{
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025),
                );
                if(datePicked!=null)
              {
                print('date selected is ${datePicked.year}');
              }
              },

              
              child: Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
