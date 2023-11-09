import 'package:hyrule/domain/models/entry_model.dart';

abstract class DaoWorkFlow {
  Future<List<EntryModel>> getSavedEntries();

  Future<void> saveEntry({required EntryModel entry});

  Future<void> deleteEntry({required EntryModel entry});
}
