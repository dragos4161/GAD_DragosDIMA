import 'package:flutter/material.dart';
import 'package:gad_tema2/meeting7/details_page.dart';
import 'package:gad_tema2/meeting7/photo_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PhotoApp(),
      routes: <String, WidgetBuilder>{
        '/photoDetails': (BuildContext context) {
          return const DetailsPage();
        },
      },
    );
  }
}
