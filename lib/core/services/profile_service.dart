import 'dart:convert';

import 'package:google_musics/core/services/base_service.dart';
import 'package:google_musics/models/profile.dart';

class ProfileService extends BaseService {
  Future<List<Profile>> getProfiles() async {
    String content = await getApiData();

    Map<String, dynamic> jsonData = jsonDecode(content);

    List<Map<String, dynamic>> data = jsonData['profiles'];

    return List.generate(data.length, (index) => Profile.fromMap(data[index]));
  }
}
