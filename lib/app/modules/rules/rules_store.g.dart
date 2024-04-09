// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RulesStore on _RulesStoreBase, Store {
  late final _$expandedAtom =
      Atom(name: '_RulesStoreBase.expanded', context: context);

  @override
  bool get expanded {
    _$expandedAtom.reportRead();
    return super.expanded;
  }

  @override
  set expanded(bool value) {
    _$expandedAtom.reportWrite(value, super.expanded, () {
      super.expanded = value;
    });
  }

  @override
  String toString() {
    return '''
expanded: ${expanded}
    ''';
  }
}
