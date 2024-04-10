// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RulesStore on _RulesStoreBase, Store {
  late final _$isExpandedAtom =
      Atom(name: '_RulesStoreBase.isExpanded', context: context);

  @override
  bool get isExpanded {
    _$isExpandedAtom.reportRead();
    return super.isExpanded;
  }

  @override
  set isExpanded(bool value) {
    _$isExpandedAtom.reportWrite(value, super.isExpanded, () {
      super.isExpanded = value;
    });
  }

  late final _$_RulesStoreBaseActionController =
      ActionController(name: '_RulesStoreBase', context: context);

  @override
  void expanded() {
    final _$actionInfo = _$_RulesStoreBaseActionController.startAction(
        name: '_RulesStoreBase.expanded');
    try {
      return super.expanded();
    } finally {
      _$_RulesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isExpanded: ${isExpanded}
    ''';
  }
}
