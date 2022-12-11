import 'package:gad_tema2/meeting8/src/actions/index.dart';
import 'package:gad_tema2/meeting8/src/data/photo_api.dart';
import 'package:gad_tema2/meeting8/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpics {
  AppEpics(this._api);

  final PhotoApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotosStart),
    ]);
  }

  Stream<dynamic> _getPhotosStart(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotosStart action) => _api.getPhotos())
        .map((List<Photo> photos) => GetPhotos.successful(photos))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPhotos.error(error, stackTrace));
  }
}
