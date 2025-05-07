// ignore_for_file: avoid_print, sized_box_for_whitespace, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API BAGLANTI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------

  @override
  Widget build(BuildContext context) {
    
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------j
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("API Baðlantisi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
            //-----------------
          ],
        ),
      ),);
  }
}
