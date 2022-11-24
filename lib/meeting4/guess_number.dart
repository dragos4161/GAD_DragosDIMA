import 'dart:math';

import 'package:flutter/material.dart';

class NumberGuess extends StatefulWidget {
  const NumberGuess({super.key});

  @override
  State<NumberGuess> createState() => _NumberGuessState();
}

class _NumberGuessState extends State<NumberGuess> {
  final TextEditingController _inputController = TextEditingController();
  String hint = '';
  String? errorMessage;
  int randomNumber = Random().nextInt(91) + 10;
  double fontSizeVariable = 1;
  bool won = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Guessing number APP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              "I'm thinking of a number from 1 - 100",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text(
              'Can you guess it?',
              style: TextStyle(
                fontSize: 50,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Center(
            child: Text(
              hint,
              style: TextStyle(
                fontSize: fontSizeVariable,
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 50,
              child: SizedBox(
                height: 200,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _inputController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter a number...',
                          errorText: errorMessage,
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 60,
                          right: 60,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            setState(
                              () {
                                fontSizeVariable = 50;
                                final String inputNumber = _inputController.text;
                                final int? intInputNumber = int.tryParse(inputNumber);
                                if (intInputNumber == null) {
                                  errorMessage = 'Enter a number!';
                                  hint = '';
                                  fontSizeVariable = 1;
                                } else {
                                  if (intInputNumber == randomNumber) {
                                    hint = 'You got it right';
                                    won = true;
                                    errorMessage = null;
                                  } else if (intInputNumber < randomNumber) {
                                    hint = 'Guess higher';
                                    errorMessage = null;
                                  } else {
                                    hint = 'Guess lower';
                                    errorMessage = null;
                                  }
                                }
                              },
                            );
                          },
                          color: Colors.grey.shade400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'CHECK',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.check_rounded,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
