import 'package:crealivin_apps/provider/influencer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChoosenPiictureInfluencer extends StatefulWidget {
  const ChoosenPiictureInfluencer({super.key});

  @override
  State<ChoosenPiictureInfluencer> createState() =>
      _ChoosenPiictureInfluencerState();
}

class _ChoosenPiictureInfluencerState extends State<ChoosenPiictureInfluencer> {
  @override
  Widget build(BuildContext context) {
    final uploadImg = Provider.of<InfluencerProvider>(context);
    // final uploadImg = Provider.of<BrandProvider>(context, listen: true);
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
                'Unggah foto portofoliomu untuk meningkatkan kepercayaan dan potensi dirimu kepada para brand.',
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
                    uploadImg.pickFile(context,'/upload-picture-influencer-screen');
                  },
                  child: Container(
                    width: 180,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          'Unggah Foto Portofolio',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          ),
         SizedBox(height: 10,)
        ],
      )),
    );
  }
}
