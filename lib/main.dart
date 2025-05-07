// ignore_for_file: avoid_print, sized_box_for_whitespace, prefer_interpolation_to_compose_strings
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      debugShowCheckedModeBanner: false,
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
            double? sicaklik;
            String? durum;
            String? sehir;
            bool yukleniyorMu = true;

            @override
            void initState(){
              super.initState();
              havaDurumuGetir();
            }

  Future<void> havaDurumuGetir() async{
    final url = Uri.parse(
      "https://api.weatherapi.com/v1/current.json?key=079c8d7c50d147d2b4661646250705&q=sebinkarahisar&aqi=no&lang=tr",
    );

    try{
      final yanit=await http.get(url);
      if(yanit.statusCode==200){
       final veri = json.decode(yanit.body);
       setState(() {
         sehir=veri["location"]["name"];
         sicaklik=veri["current"]["temp_c"];
         durum=veri["current"]["condition"]["text"];
         yukleniyorMu=false;
       });
      }
      else{
        setState(() {
          durum="Veri Alýnamadý";
          yukleniyorMu=false;
        });
      }
    }
    catch(hata){
      setState(() {
        durum="Hata Oluþtu";
        yukleniyorMu=false;
      });
    }

  }





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
            //-----------------
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
            yukleniyorMu 
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Þehir: $sehir"),
                  SizedBox(height: 15,),
                  Text("Sicaklik: ${sicaklik.toString()} C"),
                  SizedBox(height: 15,),
                  Text("Durum $durum"),
                  SizedBox(height: 15,),
                  Icon(Icons.sunny,size: 30,color: Colors.orange,)
                ],
              ),
            //-----------------
            //-----------------
            //-----------------
            //-----------------
          ],
        ),
      ),);
  }
}
