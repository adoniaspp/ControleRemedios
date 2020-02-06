import 'package:alert_remedios/funcoes_auxiliares.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class WidgetCamera extends StatefulWidget {

  final List<CameraDescription> cameras;

  WidgetCamera({Key key, @required this.cameras}): super(key : key);

  @override
  _WidgetCameraState createState() => _WidgetCameraState();

}

class _WidgetCameraState extends State<WidgetCamera> {
  CameraController controller;
  Future<void> initializeControllerFuture;

  @override
  void initState() {
      super.initState();
      //FuncoesAuxiliares().getCamera();
      try {
      final firstCamera = widget.cameras.first;
      controller = CameraController(
        firstCamera,
        ResolutionPreset.high,
      );
      
      controller.initialize().then((_){
        setState(() {
        });
      });        
      
    } on CameraException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: !controller.value.isInitialized ?
            Center(child: CircularProgressIndicator(),) :
            CameraPreview(controller)
      );
  }
}