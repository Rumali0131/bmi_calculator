import 'package:bmi_calculator/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                      fontSize:40.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.white
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()))
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: const BorderSide(color: Colors.white)
                      ),
                      minimumSize: const Size(150, 50),
                      textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      primary: Colors.white,
                      onPrimary: Colors.pink,
                    ),
                    child: const Text('Go!')
                )
            )
          ],
        ),
      ),
    );
  }
}


