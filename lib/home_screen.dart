import 'package:flutter/material.dart';
import 'package:lab6/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen")),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => SecondScreen())) ;},
            child: Text("Home Screen"))
      ],),
    );
  }
}