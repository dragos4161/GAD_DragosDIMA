import 'package:gad_tema2/meeting8/src/actions/index.dart';
import 'package:gad_tema2/meeting8/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetPhotosStart>(_getPhotosStart),
  TypedReducer<AppState, GetPhotosSuccessful>(_getPhotosSuccessful),
  TypedReducer<AppState, GetPhotosError>(_getPhotosError),
  TypedReducer<AppState, SetSelectedPhoto>(_setSelectedPhoto),
]);

AppState _getPhotosSuccessful(AppState state, GetPhotosSuccessful action) {
  return state.copyWith(
    photos: action.photos,
    isLoading: false,
  );
}

AppState _getPhotosStart(AppState state, GetPhotosStart action) {
  return state.copyWith(
    isLoading: true,
  );
}

AppState _getPhotosError(AppState state, GetPhotosError action) {
  return state.copyWith(
    isLoading: false,
  );
}

AppState _setSelectedPhoto(AppState state, SetSelectedPhoto action) {
  return state.copyWith(
    selectedPhoto: action.photo,
  );
}
