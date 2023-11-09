import 'package:floor/floor.dart';
import 'package:hyrule/domain/models/entry_model.dart';

@dao
abstract class EntryDAO {
  @Query('SELECT * FROM ENTRY')
  Future<List<EntryModel>> getAllEntries();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addEntry(EntryModel entry);

  @delete
  Future<void> removeEntry(EntryModel entry);
}
