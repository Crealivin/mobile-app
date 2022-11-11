import 'package:flutter/material.dart';

class EditProfileBrandScreen extends StatelessWidget {
  const EditProfileBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _username = TextEditingController();
    final TextEditingController _namaLengkap = TextEditingController();
    final TextEditingController _namaPangilan = TextEditingController();
    final TextEditingController _instagram = TextEditingController();
    final TextEditingController _tiktok = TextEditingController();
    final TextEditingController _domisili = TextEditingController();

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
                padding: const EdgeInsets.all(16),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          Stack(
                            children: [
                              textEditProfile('*Domisili', _domisili),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
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
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Bio'),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '*Jangan melebihi 200 karakter',
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(height: 40),
                          const Text(
                            'Sosial Mendia',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
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
                    ElevatedButton(
                      onPressed: () {
                        print(_domisili.text);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text(
                        'Lanjut',
                        style: TextStyle(color: Colors.white),
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
          border: const OutlineInputBorder(),
          label: Text(_label),
          floatingLabelBehavior: FloatingLabelBehavior.auto),
    );
  }
}
