import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pinch to Zoom',style:TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InteractiveViewer(
                maxScale: 10.0,
                clipBehavior: Clip.none,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network('https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_960_720.jpg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
