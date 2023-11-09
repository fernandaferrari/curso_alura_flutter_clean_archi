import 'package:dio/dio.dart';
import 'package:hyrule/domain/models/entry_model.dart';
import 'package:hyrule/utils/consts/api.dart';

class DataApi {
  Dio dio = Dio();
  List<EntryModel> entries = [];

  Future<List<EntryModel>> getEntriesByCategory(
      {required String category}) async {
    final response = await dio.get(apiUrl + category);
    return List<EntryModel>.from(
        response.data["data"].map((e) => EntryModel.fromMap(e)));
  }
}
