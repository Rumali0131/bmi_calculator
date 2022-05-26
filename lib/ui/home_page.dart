import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('BMI Calculator', style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.pink
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Container(
              margin: const EdgeInsets.all(30.0),
              width: 200.0,
              height: 500.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 18.0, color: Colors.pink, fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          labelText: 'Your age',
                          hintStyle: TextStyle(fontSize: 13.0, color: Colors.pinkAccent, fontWeight: FontWeight.normal),
                          labelStyle: TextStyle(fontSize: 18.0, color: Colors.pink,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person, size: 40.0, color: Colors.pink,)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 18.0, color: Colors.pink, fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          labelText: 'Your weight',
                          hintText: 'In kilograms',
                          hintStyle: TextStyle(fontSize: 13.0, color: Colors.pinkAccent, fontWeight: FontWeight.normal),
                          labelStyle: TextStyle(fontSize: 18.0, color: Colors.pink,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.line_weight, size: 40.0, color: Colors.pink,)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 18.0, color: Colors.pink, fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          labelText: 'Your height',
                          hintText: 'In centimetres',
                          hintStyle: TextStyle(fontSize: 13.0, color: Colors.pinkAccent, fontWeight: FontWeight.normal),
                          labelStyle: TextStyle(fontSize: 18.0, color: Colors.pink,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.height, size: 40.0, color: Colors.pink,)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () => debugPrint('Pressed'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.pink)
                          ),
                          minimumSize: const Size(200, 60),
                          textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                          primary: Colors.pink,
                          onPrimary: Colors.white,
                        ),
                        child: const Text('Calculate')
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Your BMI: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
                        ),

                        Padding(padding: EdgeInsets.all(10.0)),

                        Text(
                          'Overweight',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.pink),
                        ),
                      ],
                    ),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}



