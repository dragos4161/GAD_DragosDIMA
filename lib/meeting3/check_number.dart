import 'dart:math';

import 'package:flutter/material.dart';

class CheckNumber extends StatefulWidget {
  const CheckNumber({super.key});

  @override
  State<CheckNumber> createState() => _CheckNumberState();
}

class _CheckNumberState extends State<CheckNumber> {
  final TextEditingController _inputController = TextEditingController();

  num? inputNumber;

  String? notNumberMessage;

  String displayMessage = '';

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
              onPressed: () {
                displayMessage = '';
                setState(
                  () {
                    inputNumber = double.tryParse(_inputController.text);

                    if (inputNumber != null) {
                      final double thirdOrdinRoot = pow(inputNumber!, 1 / 3).toDouble();
                      final double squaredRoot = pow(inputNumber!, 1 / 2).toDouble();
                      final double squareProd = squaredRoot * squaredRoot;
                      final double cubeProd = thirdOrdinRoot * thirdOrdinRoot * thirdOrdinRoot;
                      final int squareProdInt = squaredRoot.toInt() * squaredRoot.toInt();
                      final int cubeProdInt = thirdOrdinRoot.toInt() * thirdOrdinRoot.toInt() * thirdOrdinRoot.toInt();
                      if (squareProd == squareProdInt && cubeProd == cubeProdInt) {
                        displayMessage = '$inputNumber is perfect square and perfect cube';
                      } else if (squareProd == squareProdInt) {
                        displayMessage = '$inputNumber is perfect square ';
                      } else if (cubeProd == cubeProdInt) {
                        displayMessage = '$inputNumber is perfect cube ';
                      } else {
                        displayMessage = '$inputNumber is neither perfect square nor perfect cube';
                      }
                      notNumberMessage = null;

                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Checking number...'),
                          content: Text(displayMessage),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                color: Colors.grey,
                                padding: const EdgeInsets.all(14),
                                child: const Text('OK'),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      notNumberMessage = 'Insert a number';
                    }
                  },
                );
              },
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
          ],
        ),
      ),
    );
  }
}
