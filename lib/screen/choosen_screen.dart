import 'package:crealivin_apps/screen/widgets/costume_checkbox.dart';
import 'package:flutter/material.dart';

class ChoosenScreen extends StatefulWidget {
  @override
  State<ChoosenScreen> createState() => _ChoosenScreenState();
}

class _ChoosenScreenState extends State<ChoosenScreen> {
  bool _isInfluencer = false;
  bool _isBrand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back),
          Container(
            margin: EdgeInsets.only(top: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi,\nSelamat Datang!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 19,
                ),
                Text('Kenalan dulu yuk yang mana kamu ?'),
                SizedBox(
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
                        Container(
                          child: GestureDetector(
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
                        Container(
                          child: GestureDetector(
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
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
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
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text('Opps silahkan pilih terlebih dahulu'),
                        ),
                      );
                    }
                  },
                  child: Text('Lanjut'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sudah punya akun ?'),
              TextButton(
                onPressed: () {},
                child: Text('Masuk'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildWidgetItemPilihan(String imageAsset, String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 12.0, top: 12.0),
          height: 100,
          width: 100,
          child: Image.asset(
            imageAsset,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
