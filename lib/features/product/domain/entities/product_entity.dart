// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  late int? productID;
  final String name;
  final String description;
  final String value;

  ProductEntity(
      {this.productID,
      required this.name,
      required this.description,
      required this.value});

  @override
  List<Object?> get props => [productID];
}
