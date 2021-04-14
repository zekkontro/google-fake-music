import 'package:flutter/material.dart';
import 'package:google_musics/view/charts/top_charts.dart';
import 'package:google_musics/view/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFFEF6C00),
          accentColor: Color(0xFFEF6C00),
          iconTheme: IconThemeData(color: Colors.white)),
      home: HomeView(),
    );
  }
}
