import 'package:hyrule/domain/business/api_workflow.dart';
import 'package:hyrule/domain/data/api/data_api.dart';
import 'package:hyrule/domain/models/entry.dart';

class ApiController implements ApiWorkFlow {
  final DataApi api = DataApi();

  @override
  Future<List<Entry>> getEntriesByCategory({required String category}) async {
    return await api.getEntriesByCategory(category: category);
  }
}
