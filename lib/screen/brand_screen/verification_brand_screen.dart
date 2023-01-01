import 'package:crealivin_apps/screen/widgets/otp_field_widget.dart';
import 'package:flutter/material.dart';


class VerificationBrandScreen extends StatelessWidget {
  const VerificationBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _otpText1 = TextEditingController();

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
              padding: EdgeInsets.symmetric(horizontal: 16),
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
                 TextField(
                  controller: _otpText1,
                    decoration: InputDecoration(
                      
                      label: Text('Kode Verifikasi'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
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
                  print(_otpText1.text);
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

