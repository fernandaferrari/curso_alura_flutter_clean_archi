import 'package:hyrule/domain/business/api_workflow.dart';
import 'package:hyrule/domain/data/api/data_api.dart';
import 'package:hyrule/domain/models/entry_model.dart';

class ApiController implements ApiWorkFlow {
  final DataApi api = DataApi();

  @override
  Future<List<EntryModel>> getEntriesByCategory(
      {required String category}) async {
    return await api.getEntriesByCategory(category: category);
  }
}
