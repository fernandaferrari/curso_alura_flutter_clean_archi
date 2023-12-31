import 'package:hyrule/domain/business/dao_workflow.dart';
import 'package:hyrule/domain/data/dao/database.dart';
import 'package:hyrule/domain/data/dao/entry_dao.dart';
import 'package:hyrule/domain/models/entry_model.dart';

class DaoController implements DaoWorkFlow {
  Future<EntryDAO> createDataBase() async {
    final database =
        await $FloorAppDatabase.databaseBuilder("app_database.db").build();
    return database.entryDAO;
  }

  @override
  Future<void> deleteEntry({required EntryModel entry}) async {
    await createDataBase().then((dao) => dao.removeEntry(entry));
  }

  @override
  Future<List<EntryModel>> getSavedEntries() async {
    return await createDataBase().then((dao) => dao.getAllEntries());
  }

  @override
  Future<void> saveEntry({required EntryModel entry}) async {
    await createDataBase().then((dao) => dao.addEntry(entry));
  }
}
