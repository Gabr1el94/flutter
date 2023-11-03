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
      debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  int count = 0;

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  void decrement() {
    setState(() {
      count--;
    });
    print(count); // imprime no console
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count); // imprime no console
  }

 @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/imagens/Flutter01.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Text(
              isFull ? 'Lotato' : 'Pode Entrar',
              style: TextStyle(
                  fontSize: 30,
                  color: isFull ? Colors.red : Colors.white ,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 100,
                color: isFull ? Colors.red : Colors.white ,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  child: Text('Saiu'),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                ),
                const SizedBox(width: 64),
                TextButton(
                  onPressed: isFull ? null : increment,
                  child: Text('Entrou'),
                  style: TextButton.styleFrom(
                      backgroundColor: isFull ? Colors.yellow.withOpacity(0.2) : Colors.yellow,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}