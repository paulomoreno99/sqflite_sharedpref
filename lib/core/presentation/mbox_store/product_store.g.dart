// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on _ProductStore, Store {
  Computed<String>? _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: '_ProductStore.name'))
      .value;
  Computed<String>? _$descriptionComputed;

  @override
  String get description =>
      (_$descriptionComputed ??= Computed<String>(() => super.description,
              name: '_ProductStore.description'))
          .value;
  Computed<String>? _$valueComputed;

  @override
  String get value => (_$valueComputed ??=
          Computed<String>(() => super.value, name: '_ProductStore.value'))
      .value;
  Computed<bool>? _$dadosPreenchidosComputed;

  @override
  bool get dadosPreenchidos => (_$dadosPreenchidosComputed ??= Computed<bool>(
          () => super.dadosPreenchidos,
          name: '_ProductStore.dadosPreenchidos'))
      .value;

  late final _$_nameAtom = Atom(name: '_ProductStore._name', context: context);

  @override
  String? get _name {
    _$_nameAtom.reportRead();
    return super._name;
  }

  @override
  set _name(String? value) {
    _$_nameAtom.reportWrite(value, super._name, () {
      super._name = value;
    });
  }

  late final _$_descriptionAtom =
      Atom(name: '_ProductStore._description', context: context);

  @override
  String? get _description {
    _$_descriptionAtom.reportRead();
    return super._description;
  }

  @override
  set _description(String? value) {
    _$_descriptionAtom.reportWrite(value, super._description, () {
      super._description = value;
    });
  }

  late final _$_valueAtom =
      Atom(name: '_ProductStore._value', context: context);

  @override
  String? get _value {
    _$_valueAtom.reportRead();
    return super._value;
  }

  @override
  set _value(String? value) {
    _$_valueAtom.reportWrite(value, super._value, () {
      super._value = value;
    });
  }

  late final _$_ProductStoreActionController =
      ActionController(name: '_ProductStore', context: context);

  @override
  dynamic updateName({required String name}) {
    final _$actionInfo = _$_ProductStoreActionController.startAction(
        name: '_ProductStore.updateName');
    try {
      return super.updateName(name: name);
    } finally {
      _$_ProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateDescription({required String description}) {
    final _$actionInfo = _$_ProductStoreActionController.startAction(
        name: '_ProductStore.updateDescription');
    try {
      return super.updateDescription(description: description);
    } finally {
      _$_ProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateValue({required String value}) {
    final _$actionInfo = _$_ProductStoreActionController.startAction(
        name: '_ProductStore.updateValue');
    try {
      return super.updateValue(value: value);
    } finally {
      _$_ProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
description: ${description},
value: ${value},
dadosPreenchidos: ${dadosPreenchidos}
    ''';
  }
}
