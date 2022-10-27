import 'package:flutter/material.dart';

class BrandSignupScreen extends StatefulWidget {
  const BrandSignupScreen({super.key});

  @override
  State<BrandSignupScreen> createState() => _BrandSignupScreenState();
}

class _BrandSignupScreenState extends State<BrandSignupScreen> {
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Daftar Sebagai Pemilik Brand',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'Segera daftar untuk menjelajahi berbagai fitur menarik dan mempermudah management kamu dengan influencer. ',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Email'),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Center(
                                  child: Text('+62'),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text('Phone Number'),
                                      hintText: '8**-****-***',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: _isObsecure,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObsecure = !_isObsecure;
                                      });
                                    },
                                    icon: Icon(_isObsecure
                                        ? Icons.visibility
                                        : Icons.visibility_off),),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: _isObsecure,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Konfirmasi Password',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObsecure = !_isObsecure;
                                      });
                                    },
                                    icon: Icon(_isObsecure
                                        ? Icons.visibility
                                        : Icons.visibility_off),),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Daftar'),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
