import 'package:flutter/material.dart';

class CheckNumber extends StatefulWidget {
  const CheckNumber({super.key});

  @override
  State<CheckNumber> createState() => _CheckNumberState();
}

class _CheckNumberState extends State<CheckNumber> {
  final TextEditingController _inputController = TextEditingController();

  int? inputNumber;

  String? notNumberMessage;

  String displayMessage = 'Nothing';

  String message = 'Enter a number!';

  int? integerSqrt;

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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _inputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                errorText: notNumberMessage,
                hintText: 'Enter a number...',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(100, 50)),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.check_rounded,
                size: 35,
              ),
              label: const Text(
                'Check',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
