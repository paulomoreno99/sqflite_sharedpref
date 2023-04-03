// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print, unused_field, unused_import, avoid_returning_null_for_void, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences_2/core/presentation/mbox_store/product_store.dart';

class ProductCrudPage extends StatelessWidget {
  final _productStore = GetIt.I.get<ProductStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: (Text('Dados de Produto')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(labelText: 'Name'),
                        onChanged: (value) =>
                            _productStore.updateName(name: value),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(labelText: 'Description'),
                        onChanged: (value) =>
                            _productStore.updateDescription(description: value),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Value'),
                        onChanged: (value) =>
                            _productStore.updateValue(value: value),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      FlutterLogo(
                        size: 150,
                      ),
                      Icon(Icons.photo_camera, size: 48),
                    ],
                  ),
                ),
                ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 200),
                    child: Observer(builder: (_) {
                      return ElevatedButton.icon(
                        icon: Icon(Icons.save),
                        label: Text('Gravar'),
                        //onPressed: null,
                        //onPressed: _productStore.dadosPreenchidos ? () {} : null,
                        onPressed:
                            _productStore.dadosPreenchidos ? null : () {},
                      );
                    })),
              ],
            ),
          ),
        ));
  }
}


/// Com null ele desabilita o botão Gravar e com a função
/// anonima () {}) ele habilita.