import 'package:crealivin_apps/screen/widgets/costume_checkbox.dart';
import 'package:flutter/material.dart';

class ChoosenScreen extends StatefulWidget {
  const ChoosenScreen({super.key});

  @override
  State<ChoosenScreen> createState() => _ChoosenScreenState();
}

class _ChoosenScreenState extends State<ChoosenScreen> {
  bool _isInfluencer = false;
  bool _isBrand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              Container(
                margin: const EdgeInsets.only(top: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hi,\nSelamat Datang!',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text('Kenalan dulu yuk yang mana kamu ?'),
                    const SizedBox(
                      height: 64,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildWidgetItemPilihan(
                              'assets/images/influenc.png',
                              'Seorang Influencer',
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isInfluencer = !_isInfluencer;
                                  _isBrand = !_isInfluencer;
                                  _isBrand = false;
                                });
                              },
                              child: CustomCheckBox(
                                isCheck: _isInfluencer,
                              ),
                            ),

                            // Checkbox(value: __isInfluencerr, onChanged:null,),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildWidgetItemPilihan(
                              'assets/images/client.png',
                              'Pemilik Brand',
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isBrand = !_isBrand;
                                  _isInfluencer = !_isBrand;
                                  _isInfluencer = false;
                                });
                              },
                              child: CustomCheckBox(
                                isCheck: _isBrand,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_isInfluencer == true) {
                          Navigator.pushNamed(context, '/influencer-signup');
                        } else if (_isBrand == true) {
                          Navigator.pushNamed(context, '/brand-signup');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content:
                                  Text('Opps silahkan pilih terlebih dahulu'),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text(
                        'Lanjut',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun ?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/choose-signin');
                    },
                    child: const Text('Masuk'),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildWidgetItemPilihan(String imageAsset, String text) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12.0, top: 12.0),
          height: 100,
          width: 100,
          child: Image.asset(
            imageAsset,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
