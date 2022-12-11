import 'dart:convert';

import 'package:gad_tema2/meeting8/src/models/index.dart';
import 'package:http/http.dart';

class PhotoApi {
  const PhotoApi(this._client);

  final Client _client;

  Future<List<Photo>> getPhotos() async {
    final Response response = await _client.get(
      Uri.parse(
        'https://api.unsplash.com/photos/random/?count=6&client_id=6j2NpUO6awtcrGwip0UOoi5NydZuUW-bMsiuXfZSqgg',
      ),
    );

    final List<dynamic> body = jsonDecode(response.body) as List<dynamic>;

    return body //
        .map((dynamic item) => Photo.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
