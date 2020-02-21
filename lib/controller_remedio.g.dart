// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_remedio.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerRemedio on ControllerRemedioBase, Store {
  final _$remedioAtom = Atom(name: 'ControllerRemedioBase.remedio');

  @override
  Remedio get remedio {
    _$remedioAtom.context.enforceReadPolicy(_$remedioAtom);
    _$remedioAtom.reportObserved();
    return super.remedio;
  }

  @override
  set remedio(Remedio value) {
    _$remedioAtom.context.conditionallyRunInAction(() {
      super.remedio = value;
      _$remedioAtom.reportChanged();
    }, _$remedioAtom, name: '${_$remedioAtom.name}_set');
  }

  final _$ControllerRemedioBaseActionController =
      ActionController(name: 'ControllerRemedioBase');

  @override
  void cadastrar(String descricao, int hora, int minuto) {
    final _$actionInfo = _$ControllerRemedioBaseActionController.startAction();
    try {
      return super.cadastrar(descricao, hora, minuto);
    } finally {
      _$ControllerRemedioBaseActionController.endAction(_$actionInfo);
    }
  }
}
