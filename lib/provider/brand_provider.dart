
import 'package:crealivin_apps/model/product_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class BrandProvider extends ChangeNotifier{
  List<ProductModel> _items = [];
  List<ProductModel> get items{
    return [..._items];
  }

  FilePickerResult? result;
  // String? _fileName;
  String? displayImage ;
  PlatformFile? pickedFile;
  
  void pickFile()async{
    try{
      result = await FilePicker.platform.pickFiles(
        type: FileType.image
      );
      if(result != null){
        pickedFile = result!.files.first;
        // _fileName = pickedFile!.name;
        displayImage = pickedFile!.path ;
        // displayImage = imageFileProd!.imageFile;
        // fileDisplay = File(pickedFile!.path.toString());
        // print(_fileName);
        notifyListeners();
       
      }

    }
    catch(e){
      print(e);
    }
  }
  void addProduct(ProductModel product)async{
    try{
      final addNewProduct =  ProductModel(
      imageFile: displayImage, 
      namaProduct: product.namaProduct, 
      description: product.description, 
      price: product.price,);
      _items.add(addNewProduct);
      
      notifyListeners();
    }catch(e){
      print(e);
    }
      
  } 
}