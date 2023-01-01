import 'dart:io';

import 'package:crealivin_apps/provider/brand_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChoosenPiictureBrand extends StatefulWidget {
  const ChoosenPiictureBrand({super.key});

  @override
  State<ChoosenPiictureBrand> createState() => _ChoosenPiictureBrandState();
}

class _ChoosenPiictureBrandState extends State<ChoosenPiictureBrand> {
  @override
  Widget build(BuildContext context) {
    final uploadImg = Provider.of<BrandProvider>(context, listen: true);
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              const Text(
                'Edit Profil',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 19,
              ),
              const Text(
                'Unggah produkmu untuk meningkatkan daya tarik dan mengenalkan brandmu kepada influencer.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 222,
              ),
              uploadImg.fileName != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '*Kilik lanjut untuk melanjutkan',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    )
                  : Container(),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    uploadImg.pickFile(context, '/upload-product-screen');
                  },
                  child: Container(
                    width: 172,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Unggah Foto Praduk',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ],
      )),
    );
  }
}
