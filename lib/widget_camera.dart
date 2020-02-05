import 'package:alert_remedios/funcoes_auxiliares.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class WidgetCamera extends StatefulWidget {
  @override
  _WidgetCameraState createState() => _WidgetCameraState();
}

class _WidgetCameraState extends State<WidgetCamera> {
  List<CameraDescription> cameras = [];
  CameraController controller;
  Future<void> initializeControllerFuture;

  @override
  void initState() {
      super.initState();
      //FuncoesAuxiliares().getCamera();
      try {
      //obter as cameras disponíveis no main e passar como parâmetro para esse widget.
      //cameras = await availableCameras();
      final firstCamera = cameras.first;
      controller = CameraController(
        firstCamera,
        ResolutionPreset.high,
      );
      setState(() {
        initializeControllerFuture = controller.initialize();        
      });
    } on CameraException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: FutureBuilder(
        future: initializeControllerFuture,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return CameraPreview(controller);
          }else{
            Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}