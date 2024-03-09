import 'package:expense_tracker/pages.dart/login_page.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/utilis/routes.dart';
import 'package:expense_tracker/pages.dart/home_page.dart' ;

//import 'pages.dart/home_page.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) =>const LoginPage(),
        MyRoutes.homeroutes: (context) => const HomePage(),
        MyRoutes.loginroutes: (context) => const LoginPage()
      },
    );
  }
}