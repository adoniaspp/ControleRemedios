import 'package:alert_remedios/funcoes_auxiliares.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class WidgetCamera extends StatefulWidget {
  @override
  _WidgetCameraState createState() => _WidgetCameraState();
}

class _WidgetCameraState extends State<WidgetCamera> {

  @override
  void initState() {
      super.initState();
      FuncoesAuxiliares().getCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: FutureBuilder(
        future: FuncoesAuxiliares().initializeControllerFuture,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return CameraPreview(FuncoesAuxiliares().controller);
          }else{
            Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}