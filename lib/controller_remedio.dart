import 'package:mobx/mobx.dart';

import 'model_remedio.dart';
part 'controller_remedio.g.dart';

class ControllerRemedio = ControllerRemedioBase with _$ControllerRemedio;

abstract class ControllerRemedioBase with Store{

  @observable
  Remedio remedio;

  @action
  void cadastrar(String descricao, int hora, int minuto){
    //chama o service
  }

}