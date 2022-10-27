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
                margin: const EdgeInsets.only(top: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Daftar Sebagai Pemilik Brand',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text(
                      'Segera daftar untuk menjelajahi berbagai fitur menarik dan mempermudah management kamu dengan influencer. ',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Email'),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
                            ),
                            const SizedBox(
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
                                  child: const Center(
                                    child: Text('+62'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
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
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              obscureText: _isObsecure,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObsecure = !_isObsecure;
                                      });
                                    },
                                    icon: Icon(_isObsecure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              obscureText: _isObsecure,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: 'Konfirmasi Password',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObsecure = !_isObsecure;
                                      });
                                    },
                                    icon: Icon(_isObsecure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text(
                        'Daftar',
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
}
