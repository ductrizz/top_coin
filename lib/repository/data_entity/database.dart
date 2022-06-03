import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../models/coin_entity.dart';
import 'coin_dao.dart';

part 'database.g.dart';



@Database(version: 1, entities: [CoinEntity])
abstract class AppDatabase extends FloorDatabase {
  CoinDao get coinDao;
}