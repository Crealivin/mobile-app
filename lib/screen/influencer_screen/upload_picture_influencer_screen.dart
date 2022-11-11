import 'dart:io';

import 'package:crealivin_apps/provider/influencer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UploadInFotofluencerScreen extends StatelessWidget {
  

  UploadInFotofluencerScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
  TextEditingController namaProd = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
 
    final provUploadInfluenc = Provider.of<InfluencerProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
           Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),),
        title: Text('Unggah Portofolio'),
        actions: [
          IconButton(onPressed: (){
           print(provUploadInfluenc.displayImage);
            print(namaProd.text);
            print(deskripsi.text);
            Navigator.pushNamed(context, '/done-regitration-influencer-screen');
          }, icon: Icon(Icons.check))
        ],
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
                    Text('Nama Influencer'),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                provUploadInfluenc.displayImage != null
                    ? Container(
                        height: 350,
                        width: double.infinity,
                        child: Image.file(
                          File(provUploadInfluenc.displayImage.toString()),
                          fit: BoxFit.cover,
                        ),
                      )
                    :
                Container(
                  height: 360,
                  child: Image.asset('assets/images/Image_empty.png',fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 24,
                ),
                textUploadProduct('Judul Foto',namaProd),
                SizedBox(
                  height: 24,
                ),
                textUploadProduct('Deskripsi foto',deskripsi),
                SizedBox(
                  height: 24,
                ),
             
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textUploadProduct(String _label,TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(_label),
          floatingLabelBehavior: FloatingLabelBehavior.auto),
    );
  }
}
