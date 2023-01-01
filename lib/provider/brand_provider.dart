
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
class BrandProvider extends ChangeNotifier{
  // List<ProductModel> _items = [];
  // List<ProductModel> get items{
  //   return [..._items];
  // }

 FilePickerResult? result;
  Uint8List fileBytes = Uint8List(8);
  String? fileName;
  
  void pickFile(BuildContext context, String routeName)async{
    try{
      result = await FilePicker.platform.pickFiles(
        type: FileType.image,

      );
      if(result != null){
        var bytes =result!.files.single.bytes; 
        fileBytes = bytes!;
        fileName = result!.files.single.name;
        print(fileName);
      //  final pickedFile = result!.files.single;
      //   displayImage = pickedFile.bytes;
        Navigator.pushNamed(context, routeName);
        notifyListeners();
      }
    }
    catch(e){
      print(e);
    }
  }
  // void addProduct(ProductModel product)async{
  //   try{
  //     final addNewProduct =  ProductModel(
  //     imageFile: displayImage, 
  //     namaProduct: product.namaProduct, 
  //     description: product.description, 
  //     price: product.price,);
  //     _items.add(addNewProduct);
      
  //     notifyListeners();
  //   }catch(e){
  //     print(e);
  //   }
      
  // } 
}