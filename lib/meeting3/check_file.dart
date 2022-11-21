import 'package:flutter/material.dart';

class CheckNumber extends StatefulWidget {
  const CheckNumber({super.key});

  @override
  State<CheckNumber> createState() => _CheckNumberState();
}

class _CheckNumberState extends State<CheckNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Check Number APP',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
