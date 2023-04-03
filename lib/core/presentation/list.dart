// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences_2/core/data/datasources/products_sqlite_datasource.dart';

import '../data/models/product_model.dart';

class ProductsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos Registrados'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: FutureBuilder(
          future: ProductSQLiteDatasource().getAll(),
          builder: (BuildContext context,
              AsyncSnapshot<List<ProductModel>> snapshot) {
            if (!snapshot.hasData) {
              print(snapshot.data);
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.blueGrey,
                ),
              );
            }
            print(snapshot.data?.length);
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final ProductModel product = snapshot.data![index];
                return Padding(
                  padding: EdgeInsets.only(left: 8, right: 4),
                  child: Text(
                    product.name,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
