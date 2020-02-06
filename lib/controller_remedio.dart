import 'package:mobx/mobx.dart';

import 'model_remedio.dart';
part 'controller.g.dart';

class ControllerRemedio = ControllerRemedioBase with _$ControllerRemedio;

abstract class ControllerRemedioBase with Store{

  @observable
  Remedio remedio;

  @action
  void cadastrar(){
    //chama o service
  }

}