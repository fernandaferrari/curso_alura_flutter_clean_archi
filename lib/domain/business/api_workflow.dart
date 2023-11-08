import 'package:hyrule/domain/models/entry.dart';

abstract class ApiWorkFlow {
  Future<List<Entry>> getEntriesByCategory({required String category});
}
