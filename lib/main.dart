import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gad_tema2/meeting8/src/actions/index.dart';
import 'package:gad_tema2/meeting8/src/data/photo_api.dart';
import 'package:gad_tema2/meeting8/src/epics/app_epics.dart';
import 'package:gad_tema2/meeting8/src/models/index.dart';
import 'package:gad_tema2/meeting8/src/presentation/details_page.dart';
import 'package:gad_tema2/meeting8/src/presentation/photo_app.dart';
import 'package:gad_tema2/meeting8/src/reducer/reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  final Client client = Client();
  final PhotoApi api = PhotoApi(client);
  final AppEpics epics = AppEpics(api);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
    ],
  )..dispatch(const GetPhotos());

  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const PhotoApp(),
        routes: <String, WidgetBuilder>{
          '/photoDetails': (BuildContext context) {
            return const DetailsPage();
          },
        },
      ),
    );
  }
}
