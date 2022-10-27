import 'package:flutter/material.dart';

class BrandSignin extends StatefulWidget {
  const BrandSignin({super.key});

  @override
  State<BrandSignin> createState() => _BrandSigninState();
}

class _BrandSigninState extends State<BrandSignin> {
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
                      'Masuk',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text(
                      'Temukan influencer kreatif dan inspiratif yang sesuai \ndengan Brand Anda!',
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
                                          : Icons.visibility_off)),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
                            ),
                            const SizedBox(
                              height: 20,
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
                        'Masuk',
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
