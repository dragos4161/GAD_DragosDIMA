import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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

  void convert(){
    setState(() {
      ok = true;
      if(amount != null) {
        if (currency == 0) {
          convertedAmount = 4.92 * amount!;
          convertedAmountString = convertedAmount!.toStringAsFixed(2);
        }
        else if (currency == 1) {
          convertedAmount = 4.73 * amount!;
          convertedAmountString = convertedAmount!.toStringAsFixed(2);
        }
        else if (currency == 2) {
          convertedAmount = 5.64 * amount!;
          convertedAmountString = convertedAmount!.toStringAsFixed(2);
        }
      }
    });
  }

  final myTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(158, 216, 219, 1),
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
          children: [
            Image.network('https://store-images.s-microsoft.com/image/apps.44414.70a846a5-f8fb-4ee7-aa9e-3ee29de1cf77.d2e0a3c2-b181-4f1a-a4f8-0a1b374a5744.65f43c31-59fa-4b37-b562-d106a5c58ae3'),
            SizedBox(height: 15),
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
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(

                    children: [
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
                            if(amount != null){
                              convert();
                            }
                            setState(() {
                              currency = newValue!;
                              currencyString = 'EUR';
                            });
                          }),

                    ],
                  ),
                  Column(
                    children: [
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
                            if(amount != null){
                              convert();
                            }
                            setState(() {
                              currency = newValue!;
                              currencyString = 'USD';
                            });
                          }),

                    ],
                  ),
                  Column(
                    children: [
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
                            if(amount != null){
                              convert();
                            }
                            setState(() {
                              currency = newValue!;
                              currencyString = 'GBP';
                            });
                          }),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
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
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(46, 75, 99, 1),

                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        Icons.clear,
                        color: Color.fromRGBO(46, 75, 99, 1)
                    ),
                    onPressed: (){
                      setState(() {
                        myTextController.clear();
                        error = 'Enter a number!';
                        amount = null;
                      });
                    },


                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(46, 75, 99, 1),
                    ),

                  ),
                ),
                onChanged: (String value){
                  setState(() {
                    amount = double.tryParse(value);
                    if(amount == null){
                      error = 'Enter a number!';
                    }
                    else{
                      error = null;
                      print(amount);
                    }
                  });

                },
              ),
            ),

            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                convert();
              },
              style: OutlinedButton.styleFrom(
                  elevation: 10,
                  side: BorderSide(style: BorderStyle.none),
                  backgroundColor: Color.fromRGBO(158, 216, 219, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
              child: const Padding(

                padding: EdgeInsets.all(8),
                child: Text(
                    'CONVERT',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 75, 99, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )
                ),
              ),
            ),

            SizedBox(height: 40),
            ok == true && amount != null ? Text(
              '$amount $currencyString = $convertedAmountString RON',
              style: const TextStyle(
                color: Color.fromRGBO(158, 216, 219, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
            ) :
            const Text(
              '',
            ),
            //Text('$convertedAmount RON'),
          ]
      ),
    );
  }
}

