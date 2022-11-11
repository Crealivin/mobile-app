import 'dart:io';

import 'package:crealivin_apps/model/product_model.dart';
import 'package:crealivin_apps/provider/brand_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UploadProductScreen extends StatelessWidget {
  
  TextEditingController namaProd = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
  TextEditingController price = TextEditingController();
  UploadProductScreen();
  @override
  Widget build(BuildContext context) {
    final provProduct = Provider.of<BrandProvider>(context);
    // final uploadImg = Provider.of<BrandProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Unggah Produk'),
        actions: [IconButton(onPressed: () {
          // provProduct.addProduct(ProductModel(
          //   imageFile: provProduct.displayImage, 
          //   namaProduct: namaProd.text, 
          //   description: deskripsi.text, 
          //   price: double.parse(price.text),
            
          //   ));

            print(provProduct.displayImage);
            print(namaProd.text);
            print(price.text);
            Navigator.pushNamed(context, '/done-regitration-brand-screen');
        }, icon: Icon(Icons.check))],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Nama Brand'),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                provProduct.displayImage != null
                    ? Container(
                        height: 350,
                        width: double.infinity,
                        child: Image.file(
                          File(provProduct.displayImage.toString()),
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        height: 360,
                        child: Image.asset('assets/images/Image_empty.png',fit: BoxFit.cover,),
                      ),
                SizedBox(
                  height: 24,
                ),
                textUploadProduct('Nama Produk', namaProd),
                SizedBox(
                  height: 24,
                ),
                textUploadProduct('Deskripsi Produk',deskripsi),
                SizedBox(
                  height: 24,
                ),
                textUploadProduct('Harga Produk',price),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textUploadProduct(String _label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(_label),
          floatingLabelBehavior: FloatingLabelBehavior.auto),
    );
  }
}
