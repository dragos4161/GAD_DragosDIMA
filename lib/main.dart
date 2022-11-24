import 'package:flutter/material.dart';
//import 'package:gad_tema2/meeting2/conversion_app.dart';
//import 'package:gad_tema2/meeting3/check_number.dart';
//import 'package:gad_tema2/meeting4/guess_number.dart';
import 'package:gad_tema2/meeting4/tic_tac_toe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicTacToe(),
    );
  }
}
