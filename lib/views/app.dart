import 'package:flutter/material.dart';
import 'login.page.dart';
import 'newaccount.page.dart';

class TecmerpApp extends StatelessWidget {
  const TecmerpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        "/login": (context) => LoginPage(),
        "/new-account": (context) => NewAccountPage(),
      },
      initialRoute: "/login",
    );
  }
}