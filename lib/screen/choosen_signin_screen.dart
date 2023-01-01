import 'package:crealivin_apps/screen/widgets/costume_checkbox.dart';
import 'package:flutter/material.dart';

class ChooseSignInScreen extends StatefulWidget {
  const ChooseSignInScreen({super.key});

  @override
  State<ChooseSignInScreen> createState() => _ChooseSignInScreenState();
}

class _ChooseSignInScreenState extends State<ChooseSignInScreen> {
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
              const Icon(Icons.arrow_back),
              Container(
                margin: const EdgeInsets.only(top: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hi,\nSenang lihat kamu lagi!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text('saat ini mau masuk sebagai apa?'),
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
                              //gambar influencrnya
                              'assets/images/influenc.png',
                              //text influencer
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
                              //maggil costum check box yg di foleder costume_checkbox.dart
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildWidgetItemPilihan(
                              //gambar client atau brandnya
                              'assets/images/client.png',
                              //text baran atau cliennya
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
                          Navigator.pushNamed(context, '/influencer-signin');
                          // navigator ke halaman signin influencer
                        } else if (_isBrand == true) {
                          Navigator.pushNamed(context, '/brand-signin');
                          // navigator ke halaman bran atau client sign
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
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.black),
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
                  const Text('Belum punya akun ?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/choosen-signup');
                    },
                    child: const Text('Daftar'),
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
          height: MediaQuery.of(context).size.height/5.5,
          width: MediaQuery.of(context).size.height/5.5,
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
