import 'package:hyrule/domain/business/dao_workflow.dart';
import 'package:hyrule/domain/data/dao/database.dart';
import 'package:hyrule/domain/data/dao/entry_dao.dart';
import 'package:hyrule/domain/models/entry.dart';

class DaoController implements DaoWorkFlow {
  Future<EntryDAO> createDataBase() async {
    final database =
        await $FloorAppDatabase.databaseBuilder("app_database.db").build();
    return database.entryDAO;
  }

  @override
  Future<void> deleteEntry({required Entry entry}) {
    // TODO: implement deleteEntry
    throw UnimplementedError();
  }

  @override
  Future<List<Entry>> getSaveEntries() {
    // TODO: implement getSaveEntries
    throw UnimplementedError();
  }

  @override
  Future<void> saveEntry({required Entry entry}) {
    // TODO: implement saveEntry
    throw UnimplementedError();
  }
}
