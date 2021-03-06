import 'dart:convert';

import 'package:google_musics/core/services/base_service.dart';
import 'package:google_musics/models/playlist.dart';

class PlaylistService extends BaseService {
  Future<List<Playlist>> getPlaylists() async {
    String content = await getApiData();

    Map<String, dynamic> jsonData = jsonDecode(content);

    List<dynamic> data = jsonData['playlists'];

    return List.generate(data.length, (index) => Playlist.fromMap(data[index]));
  }
}
