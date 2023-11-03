import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Text('ola mundo!'),
    ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}): super(key: key);

  void decrement(){
    print('decrement');  // imprime no console
  }
  
  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    void decrement(){
      print('decrement');  // imprime no console
    }

    void increment(){
      print('increment');  // imprime no console
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text(
            'Pode Entrar',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            '0',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: decrement, child: Text('Saiu')),
              TextButton(onPressed: increment, child: Text('Entrou'))
            ],
          )
        ],
      ),
    );
  }


}

