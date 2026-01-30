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
    var names = ['ram', 'aadi', 'anuj', 'pratham', 'john'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Learning Flutter'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(

                keyboardType: TextInputType.phone,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Enter Email Here...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
              TextField(
                controller: passText,
                obscureText: true, //for dot
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter PassWord',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  String uemail = emailText.text.toString();
                  String upass = passText.text;

                  print("Email: $uemail, pass: $upass");
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),

      //   child: Container(
      //     width: 300,
      //     child: TextField(
      //     decoration: InputDecoration(
      //       border: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(11),
      //         borderSide: BorderSide(
      //           color: Colors.orange
      //         )
      //       )
      //     ),
      //   ),
      //   )
      // )
    );
  }
}
