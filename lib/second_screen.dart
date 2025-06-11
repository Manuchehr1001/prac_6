import 'package:flutter/material.dart';
import 'package:lab6/home_screen.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SeconScreen")),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context,
           MaterialPageRoute(builder: (context) => SecondScreen())) ;},
            child: Text("SecondScreen")),
            SizedBox(height: 20),

            //pushNamed
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/second");
            }, child: Text("pushNamed"),),

            SizedBox(height: 20),

            //pushReplacement
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, "/" as Route<HomeScreen>);
            }, child: Text("pushRepalcement"),),
      ],),
    );
  }
}