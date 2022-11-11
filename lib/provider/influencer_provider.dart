
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class InfluencerProvider extends ChangeNotifier{
  FilePickerResult? result;
  String? displayImage ;
  PlatformFile? pickedFile;
  


  void pickFile()async{
    try{
      result = await FilePicker.platform.pickFiles(
        type: FileType.image
      );
      if(result != null){
        pickedFile = result!.files.first;
        displayImage = pickedFile!.path ;
      
        notifyListeners();
      }
    }
    catch(e){
      print(e);
    }
  }
  void addFotoInfluenc()async {}
}
