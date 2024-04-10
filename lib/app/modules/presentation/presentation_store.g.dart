// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PresentationStore on _PresentationStoreBase, Store {
  late final _$fullScreenAtom =
      Atom(name: '_PresentationStoreBase.fullScreen', context: context);

  @override
  bool get fullScreen {
    _$fullScreenAtom.reportRead();
    return super.fullScreen;
  }

  @override
  set fullScreen(bool value) {
    _$fullScreenAtom.reportWrite(value, super.fullScreen, () {
      super.fullScreen = value;
    });
  }

  late final _$_PresentationStoreBaseActionController =
      ActionController(name: '_PresentationStoreBase', context: context);

  @override
  void isFullScreen() {
    final _$actionInfo = _$_PresentationStoreBaseActionController.startAction(
        name: '_PresentationStoreBase.isFullScreen');
    try {
      return super.isFullScreen();
    } finally {
      _$_PresentationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fullScreen: ${fullScreen}
    ''';
  }
}
