import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Fourth extends StatefulWidget {
  int scno;
  Fourth(this.scno);
  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(title: Text("4th page")),
      body: Center(child: 
      GestureDetector(
        onTap: () => context.go('/'),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow
          ),
          
          child: Column(
            children: [
              Text("go to homepage"),
              Text("came from screen no ${widget.scno}")
            ],
          )
          ),
      )
      ),
    );
  }
}