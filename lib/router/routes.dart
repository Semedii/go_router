
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/fourth_page.dart';
import 'package:gorouter/homePage.dart';
import 'package:gorouter/second_page.dart';
import 'package:gorouter/third_page.dart';

class AppRouter{
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute> [
      customGoRoute('/', HomePage()),
      customGoRoute('/page2', Second("jj"), name: "screen2"),
      customGoRoute('/page3', Third(2)),
      customGoRoute('/page4', Fourth(3)),
    ]
  );
}

GoRoute customGoRoute(String path, Widget classname, {String? name}){
  return GoRoute(
        name: name,
        path: path,
        builder: (BuildContext context, GoRouterState state){
          return classname;
        }
      );
}