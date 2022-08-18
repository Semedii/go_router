import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Second extends StatefulWidget {
  String text;
 Second(this.text);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("2nd page")),
      body: Center(child: 
      GestureDetector(
        onTap: () => context.push('/page3'),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue
          ),
          
          child: Column(children: [
            Text("Go to third"),
            Text("Came from ${widget.text}")
          ],)
          ),
      )
      ),
    );
  }
}