import 'package:flutter/services.dart' show rootBundle;

abstract class BaseService {
  String apiPath = "assets/api.json";
  Future<String> getApiData() async {
    return await rootBundle.loadString(apiPath);
  }
}
