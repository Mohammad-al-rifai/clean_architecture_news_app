import 'dart:async';

import 'package:clean_news_app/src/data/datasourses/local/DAOs/articles_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../../domain/entities/article.dart';
import 'converters/source_type_converter.dart';

part 'app_database.g.dart';

@TypeConverters([SourceTypeConverter])
@Database(version: 1, entities: [Article])
abstract class AppDatabase extends FloorDatabase {
  ArticleDao get articleDao;
}
