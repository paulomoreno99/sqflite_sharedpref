// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:shared_preferences_2/features/product/data/data_product_constance.dart';
import 'package:shared_preferences_2/features/product/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    productID,
    required name,
    required description,
    required value,
  }) : super(
          productID: productID,
          name: name,
          description: description,
          value: value,
        );

  factory ProductModel.fromMap(Map<String, Object?> map) {
    return ProductModel(
      productID: (map[PRODUCTS_COLUMN_PRODUCTID] as num).toInt(),
      name: map[PRODUCTS_COLUMN_NAME],
      description: map[PRODUCTS_COLUMN_DESCRIPTION],
      value: (map[PRODUCTS_COLUMN_VALUE] as num).toInt(),
    );
  }
}
