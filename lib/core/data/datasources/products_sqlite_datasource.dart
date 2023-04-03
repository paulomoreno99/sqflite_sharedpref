// ignore_for_file: unused_element, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:path/path.dart';
import 'package:shared_preferences_2/core/data/models/product_model.dart';

import 'package:shared_preferences_2/features/product/data/data_product_constance.dart';
import 'package:shared_preferences_2/features/product/domain/entities/product_entity.dart';
import 'package:sqflite/sqflite.dart';

class ProductSQLiteDatasource {
  var DATABASE_VERSION;

  Future<Database> _getDatabase() async {
    // await deleteDatabase(
    //   join(await getDatabasesPath(), DATABASE_NAME),);

    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_PRODUCTS_TABLE_SCRIPT);

        await db.rawInsert('''insert into $PRODUCTS_TABLE_NAME(
        $PRODUCTS_COLUMN_NAME,
        $PRODUCTS_COLUMN_DESCRIPTION,
        $PRODUCTS_COLUMN_VALUE)
        VALUES('Suco de Tamarindo','500 ml - Natural', 25)
        
''');

        //await db.rawInsert(INSERT_PRODUCTS_TABLE_SCRIPT);
      },
      version: DATABASE_VERSION,
    );
  }

  Future create(ProductEntity products) async {
    try {
      final Database db = await _getDatabase();

      products.productID =
          await db.rawInsert('''insert into $PRODUCTS_TABLE_NAME(
        $PRODUCTS_COLUMN_NAME,
        $PRODUCTS_COLUMN_DESCRIPTION,
        $PRODUCTS_COLUMN_VALUE)
        VALUES('Suco de Tamarindo','500 ml - Natural', '25')
 
''');
    } catch (ex) {
      return;
    }
  }

  Future<List<ProductModel>> getAll() async {
    try {
      final Database db = await _getDatabase();

      final List<Map<String, dynamic>> productsMap = await db
          .query(PRODUCTS_TABLE_NAME, orderBy: '$PRODUCTS_TABLE_NAME ASC');

      return List.generate(productsMap.length, (index) {
        return ProductModel.fromMap(productsMap[index]);
      });
    } catch (ex) {
      return List.empty();
    }
  }
}
