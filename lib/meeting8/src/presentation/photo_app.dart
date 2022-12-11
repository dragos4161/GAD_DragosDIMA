import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gad_tema2/meeting8/src/actions/index.dart';
import 'package:gad_tema2/meeting8/src/models/index.dart';
import 'package:redux/redux.dart';

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        final List<Photo> photos = store.state.photos;
        final bool isLoading = store.state.isLoading;
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Unsplash photos'),
            ),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              store.dispatch(const GetPhotos());
            },
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : GridView.builder(
                    itemCount: photos.length,
                    padding: const EdgeInsets.all(10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final Photo photo = photos[index];
                      return GestureDetector(
                        onTap: () {
                          store.dispatch(SetSelectedPhoto(photo));
                          Navigator.pushNamed(context, '/photoDetails');
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
      },
    );
  }
}
