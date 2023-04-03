// ignore_for_file: unused_element, library_private_types_in_public_api, unused_field, unrelated_type_equality_checks, unused_import

import 'dart:ffi';

import 'package:mobx/mobx.dart';

/// flutter packages pub run build_runner build/clean/watch ou --delete-conflicting-outputs
/// Depois usar extensao region folding para otimizar o codigo abaixo segundo video do Vamos Flutear

part 'product_store.g.dart';

class ProductStore = _ProductStore with _$ProductStore;

abstract class _ProductStore with Store {
  @observable
  String? _name;

  @observable
  String? _description;

  @observable
  String? _value;

  @computed
  String get name => _name ?? '';

  @computed
  String get description => _description ?? '';

  @computed
  String get value => _value ?? '';

  @action
  updateName({required String name}) {
    _name = name;
  }

  @action
  updateDescription({required String description}) {
    _description = description;
  }

  @action
  updateValue({required String value}) {
    //_value = double.tryParse(value);
    _value = value;
  }

  @computed
  bool get dadosPreenchidos =>
      name.isEmpty && description.isEmpty && value.isEmpty;
}
