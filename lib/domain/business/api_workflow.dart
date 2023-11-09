import 'package:hyrule/domain/models/entry_model.dart';

abstract class ApiWorkFlow {
  Future<List<EntryModel>> getEntriesByCategory({required String category});
}
