import 'package:flutter/material.dart';
import 'package:gad_tema2/meeting7/src/data/photo_api.dart';
import 'package:gad_tema2/meeting7/src/models/photo.dart';
import 'package:http/http.dart';

class PhotoApp extends StatefulWidget {
  const PhotoApp({super.key});

  @override
  State<PhotoApp> createState() => _PhotoAppState();
}

class _PhotoAppState extends State<PhotoApp> {
  final List<Photo> _images = <Photo>[];
  bool isLoaded = false;
  final Client _client = Client();

  Future<void> getData() async {
    final List<Photo> response = await PhotoApi(_client).getPhotos();
    setState(() {
      _images.addAll(response);
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
                  final Photo photo = _images[index];
                  if (!isLoaded) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/photoDetails', arguments: photo);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(
                        seconds: 1,
                      ),
                      width: 50,
                      child: Image.network(
                        photo.urls.small,
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
