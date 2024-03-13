import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple, // Set scaffold background color to purple
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text('Task 4'),
        ),
      ),
      body: Container(
        color: Colors.blue, // Set container color to blue
        child: Column(
          children: [
            Container(
              color: Colors.yellow, // Set column color to yellow
              child: Column(
                children: [
                  Container(
                    color: Colors.green, // Set row color to green
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'T',
                          style: TextStyle(
                              fontSize: 250,
                              color: Colors.black), // Set text color to black
                        ),
                        Icon(
                          Icons.star,
                          size: 170,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'T',
                    style: TextStyle(
                      fontSize: 260,
                      color: Colors.black, // Set text color to black
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
