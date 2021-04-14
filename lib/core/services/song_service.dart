import 'dart:convert';

import 'package:google_musics/core/services/base_service.dart';
import 'package:google_musics/models/song.dart';

class SongService extends BaseService {
  Future<List<Song>> getSongs() async {
    String content = await getApiData();

    Map<String, dynamic> jsonData = jsonDecode(content);

    List<dynamic> data = jsonData['top-songs'];

    return List.generate(data.length, (index) => Song.fromMap(data[index]));
  }
}
