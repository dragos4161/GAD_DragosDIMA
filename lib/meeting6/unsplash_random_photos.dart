import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RandomPhotos extends StatefulWidget {
  const RandomPhotos({super.key});

  @override
  State<RandomPhotos> createState() => _RandomPhotosState();
}

class _RandomPhotosState extends State<RandomPhotos> {
  List<String> _images = <String>[];
  bool isLoaded = false;

  Future<void> getData() async {
    final http.Response response = await http.get(
      Uri.parse(
        'https://api.unsplash.com/photos/random/?count=10&client_id=6j2NpUO6awtcrGwip0UOoi5NydZuUW-bMsiuXfZSqgg',
      ),
    );

    final List<dynamic> imageData = jsonDecode(response.body) as List<dynamic>;
    _images = <String>[];
    for (int i = 0; i < imageData.length; i++) {
      // ignore: avoid_dynamic_calls
      _images.add(imageData.elementAt(i)['urls']['regular'].toString());
    }
    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Unsplash photos'),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            getData();
          });
        },
        child: !isLoaded
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (!isLoaded) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          content: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              _images.elementAt(index),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    child: AnimatedContainer(
                      duration: const Duration(
                        seconds: 1,
                      ),
                      //padding: const EdgeInsets.all(0),
                      width: 50,
                      child: Image.network(
                        _images.elementAt(index),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
