import 'package:dio/dio.dart';
import 'package:hyrule/domain/models/entry.dart';
import 'package:hyrule/utils/consts/api.dart';

class DataApi {
  Dio dio = Dio();
  List<Entry> entries = [];

  Future<List<Entry>> getEntriesByCategory({required String category}) async {
    final response = await dio.get(apiUrl + category);
    return List<Entry>.from(response.data["data"].map((e) => Entry.fromMap(e)));
  }
}
