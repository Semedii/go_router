import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Third extends StatefulWidget {
  int scno;
  Third(this.scno);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3rd page")),
      body: Center(child: 
      GestureDetector(
        onTap: () => context.push('/page4'),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green
          ),
          
          child: Column(
            children: [
              Text("go to 4th"),
              Text("Came from screen no ${widget.scno}")
            ],
          )
          ),
      )
      ),
    );
  }
}