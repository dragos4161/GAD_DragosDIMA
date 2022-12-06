import 'dart:convert';

import 'package:gad_tema2/meeting7/src/models/movie.dart';
import 'package:http/http.dart';

class MovieApi {
  const MovieApi(this._client);

  final Client _client;

  Future<List<Movie>> getMovies(int page) async {
    final Response response =
        await _client.get(Uri.parse('https://yts.mx/api/v2/list_movies.json?limit=20&page=$page'));

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;

    return (data['movies'] as List<dynamic>) //
        .map((dynamic item) => Movie.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
