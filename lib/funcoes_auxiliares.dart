import 'package:camera/camera.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:math';
import 'dart:io';

class FuncoesAuxiliares {
  String _path;
  String imagePath;
  

  void openFileExplorerFirebase() async {
    try {
      _path =
          await FilePicker.getFilePath(type: FileType.IMAGE, fileExtension: '');
    } on Exception catch (e) {
      print("Unsupported operation" + e.toString());
    }
    print("$_path");
    final String fileName = Random().nextInt(10000).toString();
    final StorageReference storageRef =
        FirebaseStorage.instance.ref().child(fileName);
    final StorageUploadTask uploadTask = storageRef.putFile(
      File(_path),
    );
    final StorageTaskSnapshot downloadUrl = (await uploadTask.onComplete);
    final String url = (await downloadUrl.ref.getDownloadURL());
    print('URL Is $url');
  }

  /*void getCamera() async {
    try {
      cameras = await availableCameras();
      final firstCamera = cameras.first;
      controller = CameraController(
        firstCamera,
        ResolutionPreset.high,
      );
      controller.initialize().then((_){
        
      });
    } on CameraException catch (e) {
      print(e.toString());
    }
  }*/
}
