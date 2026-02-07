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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculation')),

      body: Container(
        color: Colors.green.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(keyboardType: TextInputType.number, controller: num1),
            TextField(keyboardType: TextInputType.number, controller: num2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(num1.text.toString());
                    var no2 = int.parse(num2.text.toString());
                    var sum = no1 + no2;
                    result = "the sum of $no1 and $no2 is $sum ";
                    setState(() {
                      
                    });
                  },
                  child: Text('Add'),
                  
                ),
                ElevatedButton(onPressed: () {}, child: Text('Sub')),
                ElevatedButton(onPressed: () {}, child: Text('Mul')),
                ElevatedButton(onPressed: () {}, child: Text('Div')),
              ],
            ),
            Padding(padding: EdgeInsets.all(21
              
            ),
            child: Text(result,style: TextStyle(fontSize: 25,color: Colors.grey),),)
          ],
        ),
      ),
    );
  }
}
