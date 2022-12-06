import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.yellow];
  final List<String> _titles = <String>[];
  final List<String> _images = <String>[];
  int currentPage = 1;
  double totalAvailableSpacing = 70;
  bool isLoading = true;

  void _getMovies() {
    get(Uri.parse('https://yts.mx/api/v2/list_movies.json')) //
        .then((Response response) {
      response.body;
      final Map<String, dynamic> map = jsonDecode(response.body) as Map<String, dynamic>;
      final Map<String, dynamic> data = map['urls'] as Map<String, dynamic>;
      final List<dynamic> movies = data['movies'] as List<dynamic>;

      final Iterable<String> items = movies //
          .cast<Map<dynamic, dynamic>>()
          .map((Map<dynamic, dynamic> item) => item['title'] as String);

      final Iterable<String> imageItems = movies //
          .cast<Map<dynamic, dynamic>>()
          .map((Map<dynamic, dynamic> item) => item['medium_cover_image'] as String);
      setState(() {
        _titles.addAll(items);
        _images.addAll(imageItems);
        isLoading = false;
      });
    });
  }

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
      body: Builder(
        builder: (BuildContext context) {
          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return PageView.builder(
            controller: _controller,
            itemBuilder: (BuildContext context, int index) {
              final bool active = index == currentPage;
              final double innerPadding = active ? 0 : 30;
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
                        milliseconds: 100,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: colors[index],
                        boxShadow: active
                            ? <BoxShadow>[
                                const BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 5,
                                ),
                              ]
                            : null,
                      ),
                      height: active ? 400 : 340,
                      child: Image.network(
                        _images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      _titles[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: _titles.length,
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getMovies();
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
