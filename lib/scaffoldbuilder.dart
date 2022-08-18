import 'package:flutter/material.dart';

class ScaffoldBuilder {
  static Scaffold build(
    Widget child, {
    showAppDefaultBar = true,
    showAppDefaultDrawer = true,
    padding = 8.0,
    resizeToAvoidBottomInset = false,
  }) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Padding(
              padding: EdgeInsets.all(padding),
              child: child,
            ),
         
      appBar: showAppDefaultBar ? AppBarWidget() : null,
    );
  }
}

AppBar AppBarWidget(){
  return AppBar(
    title: Text("hello hello"),
  );
}