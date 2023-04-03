// ignore_for_file: constant_identifier_names

const String DATABASE_NAME = 'ec_delivery_db';

const String PRODUCTS_TABLE_NAME = 'products';
const String PRODUCTS_COLUMN_PRODUCTID = 'productsID';
const String PRODUCTS_COLUMN_NAME = 'name';
const String PRODUCTS_COLUMN_DESCRIPTION = 'description';
const String PRODUCTS_COLUMN_VALUE = 'value';

const String CREATE_PRODUCTS_TABLE_SCRIPT = '''
  CREATE TABLE $PRODUCTS_TABLE_NAME(
    $PRODUCTS_COLUMN_PRODUCTID INTEGER PRIMARY KEY,
    $PRODUCTS_COLUMN_NAME TEXT,
    $PRODUCTS_COLUMN_DESCRIPTION TEXT,
    $PRODUCTS_COLUMN_VALUE REAL
  )
  ''';

// const String INSERT_PRODUCTS_TABLE_SCRIPT = '''
// INSERT INTO $PRODUCTS_TABLE_NAME(
//     $PRODUCTS_COLUMN_PRODUCTID,
//     $PRODUCTS_COLUMN_NAME,
//     $PRODUCTS_COLUMN_DESCRIPTION,
//     $PRODUCTS_COLUMN_VALUE)
//     VALUES(
//       '$products.name', '$products.description', '$products.valor')
//   )
//   ''';

//   const String INSERT_PRODUCTS_TABLE_SCRIPT = '''
// INSERT INTO $PRODUCTS_TABLE_NAME(
//     $PRODUCTS_COLUMN_PRODUCTID,
//     $PRODUCTS_COLUMN_NAME,
//     $PRODUCTS_COLUMN_DESCRIPTION,
//     $PRODUCTS_COLUMN_VALUE)
//     VALUES('Suco de Tamarindo','500 ml - Natural', 25)
//   )
//   ''';
