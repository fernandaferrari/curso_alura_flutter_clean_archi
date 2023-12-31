import 'dart:async';
import 'package:floor/floor.dart';
import 'package:hyrule/domain/data/dao/entry_dao.dart';
import 'package:hyrule/domain/models/entry_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [EntryModel])
abstract class AppDatabase extends FloorDatabase {
  EntryDAO get entryDAO;
}
