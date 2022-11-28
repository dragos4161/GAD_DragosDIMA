import 'package:flutter/material.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.yellow];
  List<String> movies = <String>['Inception', 'Red Notice', 'Avatar'];
  int currentPage = 1;
  double totalAvailableSpacing = 70;
  final PageController _controller = PageController(
    viewportFraction: 0.7,
    initialPage: 1,
    keepPage: false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5634EE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5634EE),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(
              Icons.menu_rounded,
              size: 40,
            ),
            Text(
              'Movies',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.search_outlined,
              size: 40,
            )
          ],
        ),
      ),
      body: PageView.builder(
        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          final bool active = index == currentPage;
          final double innerPadding = active ? 0 : 25;
          return Column(
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: innerPadding,
                  left: 20,
                  right: 20,
                ),
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colors[index],
                    boxShadow: active
                        ? <BoxShadow>[
                            const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 5,
                            ),
                          ]
                        : null,
                  ),
                  height: active ? 400 : 350,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  movies[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: colors.length,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final int pos = _controller.page!.round();
      if (currentPage != pos) {
        {
          setState(() {
            currentPage = pos;
          });
        }
      }
    });
  }
}
