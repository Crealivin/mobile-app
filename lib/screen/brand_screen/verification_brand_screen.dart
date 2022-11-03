import 'package:crealivin_apps/screen/widgets/otp_field_widget.dart';
import 'package:flutter/material.dart';


class VerificationBrandScreen extends StatelessWidget {
  const VerificationBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _otpText1 = TextEditingController();
    TextEditingController _otpText2 = TextEditingController();
    TextEditingController _otpText3 = TextEditingController();
    TextEditingController _otpText4 = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Verifikasi',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  const Text(
                    'Masukkan kode konfirmasi yang telah dikirimkan ke email yourname@email.com',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OtpWidget(
                        controller: _otpText1,
                      ),
                      OtpWidget(
                        controller: _otpText2,
                      ),
                      OtpWidget(controller: _otpText3),
                      OtpWidget(controller: _otpText4)
                    ],
                  ),
                  SizedBox(height: 32,),
                  TextButton(
                    onPressed: () {},
                    child: Text('Kirimkan kode baru'),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  print(_otpText1.text +
                      _otpText2.text +
                      _otpText3.text +
                      _otpText4.text);
                  Navigator.pushNamed(context, '/edit-profile-brand-screen');
                },
                child:
                    const Text('Masuk', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

