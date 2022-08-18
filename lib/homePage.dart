import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatefulWidget {
  String? text;
 HomePage({this.text});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      body: Center(child: 
      GestureDetector(
        onTap:()=> context.pushNamed('screen2'),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red
          ),
          
          child: Column(children: [
            Text("Go to second"),
            Text("Came from ${widget.text}")
          ],)
          ),
      )
      ),
    );
  }
}

