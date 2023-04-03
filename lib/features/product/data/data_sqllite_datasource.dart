// ignore_for_file: unused_element, unused_import

import 'package:path/path.dart';
import 'package:shared_preferences_2/features/product/data/data_product_constance.dart';
import 'package:shared_preferences_2/features/product/domain/entities/product_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../../../core/data/datasources/data_general_constants.dart';

class ProductSQLiteDatasource {
  Future<Database> _getDatabase() async {
    // await deleteDatabase() {
    //   join(await getDatabasesPath(), DATABASE_NAME),
    // };

    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_PRODUCTS_TABLE_SCRIPT);

        //await db.rawInsert(INSERT_PRODUCTS_TABLE_SCRIPT);
      },
      version: DATABASE_VERSION,
    );
  }
}
