import 'package:flutter/material.dart';
import 'login.page.dart';
import 'newaccount.page.dart';
import 'mysubjects.page.dart';
import 'requesterhome.page.dart';
import 'subject.page.dart';
import 'searchsubjects.page.dart';
import 'newsubject.page.dart';

class TecmerpApp extends StatelessWidget {
  const TecmerpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        ),
      routes: {
        "/login": (context) => LoginPage(),
        "/new-account": (context) => NewAccountPage(),
        "/my-subjects": (context) => MySubjects(),
        "/subject": (context) => Subject(),
        "/search-subjects": (context) => SearchSubjects(),
        "/new-subject": (context) => NewSubject(),
        "/requester-home": (context) => RequesterHome()
      },
      initialRoute: "/login",
    );
  }
}