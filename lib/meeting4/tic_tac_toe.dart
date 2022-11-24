import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  Color color = Colors.grey;
  Map<int, Color> colors = <int, Color>{};
  bool player = true;

  void initializeColors(Color color) {
    setState(
      () {
        for (int i = 0; i < 9; i++) {
          colors[i] = color;
        }
      },
    );
  }

  bool isPositionAvailable() {
    for (int i = 0; i < 9; i++) {
      if (colors[i] == Colors.grey) {
        return true;
      }
    }
    return false;
  }

  Color isWon() {
    if (colors[0] == colors[1] && colors[1] == colors[2] && colors[0] != Colors.grey) {
      return colors[0]!;
    } else if (colors[3] == colors[4] && colors[4] == colors[5] && colors[3] != Colors.grey) {
      return colors[3]!;
    } else if (colors[6] == colors[7] && colors[7] == colors[8] && colors[6] != Colors.grey) {
      return colors[6]!;
    } else if (colors[0] == colors[3] && colors[3] == colors[6] && colors[0] != Colors.grey) {
      return colors[0]!;
    } else if (colors[1] == colors[4] && colors[4] == colors[7] && colors[1] != Colors.grey) {
      return colors[1]!;
    } else if (colors[2] == colors[5] && colors[5] == colors[8] && colors[2] != Colors.grey) {
      return colors[2]!;
    } else if (colors[0] == colors[4] && colors[4] == colors[8] && colors[0] != Colors.grey) {
      return colors[0]!;
    } else if (colors[2] == colors[4] && colors[4] == colors[6] && colors[2] != Colors.grey) {
      return colors[2]!;
    } else {
      return Colors.grey;
    }
  }

  @override
  void initState() {
    super.initState();
    initializeColors(Colors.grey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tic Tac Toe',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 9,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (isPositionAvailable()) {
                  if (colors[index] == Colors.grey) {
                    if (player == true) {
                      colors[index] = Colors.red;
                    } else {
                      colors[index] = Colors.greenAccent;
                    }
                    player = !player;
                  }
                  if (isWon() == Colors.red || isWon() == Colors.greenAccent) {
                    initializeColors(isWon());
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('One more time?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              color: Colors.grey,
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              initializeColors(Colors.grey);
                            },
                            child: Container(
                              color: Colors.grey,
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                'Retry',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                } else if (isWon() == Colors.red || isWon() == Colors.greenAccent) {
                  initializeColors(isWon());
                } else if (isWon() == Colors.grey) {
                  initializeColors(Colors.grey);
                }
              });
            },
            child: AnimatedContainer(
              duration: const Duration(
                seconds: 1,
              ),
              padding: const EdgeInsets.all(15),
              height: 50,
              width: 50,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
