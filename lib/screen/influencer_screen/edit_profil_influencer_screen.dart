import 'package:flutter/material.dart';

class EditProfileInfluencerScreen extends StatefulWidget {
  const EditProfileInfluencerScreen({super.key});

  @override
  State<EditProfileInfluencerScreen> createState() =>
      _EditProfileInfluencerScreenState();
}

class _EditProfileInfluencerScreenState
    extends State<EditProfileInfluencerScreen> {
  bool _isBeauty = false;
  bool _isFashion = false;
  final TextEditingController _username = TextEditingController();
  final TextEditingController _namaLengkap = TextEditingController();
  final TextEditingController _namaPangilan = TextEditingController();
  final TextEditingController _instagram = TextEditingController();
  final TextEditingController _tiktok = TextEditingController();
  final TextEditingController _domisili = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var itemsDomisili = [
      'Jakarta',
      'Depok',
      'Tanggerang',
      'Bogor',
      'Bekasi',
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close)),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Edit Profil',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text(
                      'Lengkapi profilmu untuk meningkatkan kepercayaan dan kemudahan influencer menghubungimu.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textEditProfile('*Username', _username),
                          const SizedBox(
                            height: 20,
                          ),
                          textEditProfile('*Nama Lengkap', _namaLengkap),
                          const SizedBox(
                            height: 20,
                          ),
                          textEditProfile('*Nama Panggilan', _namaPangilan),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Kategori',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      value: _isBeauty,
                                      onChanged: (value) {
                                        setState(() {
                                          value = _isBeauty = !_isBeauty;
                                        });
                                      }),
                                  Text('Beauty')
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: _isFashion,
                                      onChanged: (value) {
                                        setState(() {
                                          value = _isFashion = !_isFashion;
                                        });
                                      }),
                                  Text('Fashion')
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              textEditProfile('*Domisili', _domisili),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopupMenuButton<String>(
                                    icon: const Icon(Icons.arrow_drop_down),
                                    onSelected: (String value) {
                                      _domisili.text = value;
                                    },
                                    itemBuilder: (BuildContext context) {
                                      return itemsDomisili
                                          .map<PopupMenuItem<String>>(
                                              (String itemValue) {
                                        return PopupMenuItem(
                                            child: Text(itemValue),
                                            value: itemValue);
                                      }).toList();
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text(
                                  'Bio',
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '*Jangan melebihi 200 karakter',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 40),
                          Text(
                            'Sosial Mendia',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          textEditProfile('*Instagram', _instagram),
                          const SizedBox(
                            height: 20,
                          ),
                          textEditProfile('*Tiktok', _tiktok),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('YouTube'),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Twitter'),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Linkedln'),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/choosen-picture-influencer-screen');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Lanjut',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textEditProfile(String _label, TextEditingController _controller) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(_label),
          floatingLabelBehavior: FloatingLabelBehavior.auto),
    );
  }
}
