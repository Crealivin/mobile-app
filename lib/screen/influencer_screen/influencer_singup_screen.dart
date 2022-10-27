import 'package:flutter/material.dart';

class InfluencerSignupScreen extends StatefulWidget {
  @override
  State<InfluencerSignupScreen> createState() => _InfluencerSignupScreenState();
}

class _InfluencerSignupScreenState extends State<InfluencerSignupScreen> {
  
  bool _isObsConfirmPasword = true;
  bool _isObsPasword = true;
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
                    'Daftar Sebagai Influencer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'Segera daftar untuk menjelajahi berbagai fitur menarik dan mempermudah management kamu dengan brand. ',
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
                            obscureText: _isObsPasword,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObsPasword = !_isObsPasword;
                                      });
                                    },
                                    icon: Icon(_isObsPasword
                                        ? Icons.visibility
                                        : Icons.visibility_off)),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: _isObsConfirmPasword,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Konfirmasi Password',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObsConfirmPasword = !_isObsConfirmPasword;
                                      });
                                    },
                                    icon: Icon(_isObsConfirmPasword
                                        ? Icons.visibility
                                        : Icons.visibility_off)),
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
