import 'package:hyrule/domain/models/entry.dart';

abstract class DaoWorkFlow {
  Future<List<Entry>> getSaveEntries();

  Future<void> saveEntry({required Entry entry});

  Future<void> deleteEntry({required Entry entry});
}