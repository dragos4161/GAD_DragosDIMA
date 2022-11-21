import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currency = 0;
  double? amount;
  double? convertedAmount;
  String? error;
  String? convertedAmountString;
  String currencyString = 'EUR';
  bool ok = false;

  void convert() {
    setState(() {
      ok = true;
      if (amount != null) {
        if (currency == 0) {
          convertedAmount = 4.92 * amount!;
          convertedAmountString = convertedAmount!.toStringAsFixed(2);
        } else if (currency == 1) {
          convertedAmount = 4.73 * amount!;
          convertedAmountString = convertedAmount!.toStringAsFixed(2);
        } else if (currency == 2) {
          convertedAmount = 5.64 * amount!;
          convertedAmountString = convertedAmount!.toStringAsFixed(2);
        }
      }
    });
  }

  final TextEditingController myTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(158, 216, 219, 1),
        title: const Center(
          child: Text(
            'MONEY CONVERTER',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(46, 75, 99, 1),
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            'https://store-images.s-microsoft.com/image/apps.44414.70a846a5-f8fb-4ee7-aa9e-3ee29de1cf77.d2e0a3c2-b181-4f1a-a4f8-0a1b374a5744.65f43c31-59fa-4b37-b562-d106a5c58ae3',
          ),
          const SizedBox(
            height: 15,
            width: 0,
          ),
          Container(
            height: 15,
          ),
          Container(
            width: 300,
            child: const Text(
              'Chose the currency:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(29, 51, 84, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text(
                      'EUR',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(29, 51, 84, 1),
                      ),
                    ),
                    Radio(
                      value: 0,
                      groupValue: currency,
                      onChanged: (int? newValue) {
                        setState(() {
                          currency = newValue!;
                          currencyString = 'EUR';
                          if (amount != null) {
                            convert();
                          }
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'USD',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(29, 51, 84, 1),
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: currency,
                      onChanged: (int? newValue) {
                        setState(() {
                          currency = newValue!;
                          currencyString = 'USD';
                          if (amount != null) {
                            convert();
                          }
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'GBP',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(29, 51, 84, 1),
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: currency,
                      onChanged: (int? newValue) {
                        setState(() {
                          currency = newValue!;
                          currencyString = 'GBP';
                          if (amount != null) {
                            convert();
                          }
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: TextField(
              controller: myTextController,
              style: const TextStyle(
                color: Color.fromRGBO(46, 75, 99, 1),
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                errorText: error,
                hintText: 'Enter the amount',
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(46, 75, 99, 1),
                  ),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Color.fromRGBO(46, 75, 99, 1),
                  ),
                  onPressed: () {
                    setState(() {
                      myTextController.clear();
                      error = 'Enter a number!';
                      amount = null;
                    });
                  },
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(46, 75, 99, 1),
                  ),
                ),
              ),
              onChanged: (String value) {
                setState(() {
                  amount = double.tryParse(value);
                  if (amount == null) {
                    error = 'Enter a number!';
                  } else {
                    error = null;
                  }
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              convert();
              FocusScope.of(context).unfocus();
            },
            style: OutlinedButton.styleFrom(
              elevation: 10,
              side: const BorderSide(style: BorderStyle.none),
              backgroundColor: const Color.fromRGBO(158, 216, 219, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'CONVERT',
                style: TextStyle(
                  color: Color.fromRGBO(46, 75, 99, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          if (ok == true && amount != null)
            Text(
              '$amount $currencyString = $convertedAmountString RON',
              style: const TextStyle(
                color: Color.fromRGBO(158, 216, 219, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          else
            const Text(
              '',
            ),
        ],
      ),
    );
  }
}
