import 'package:flutter/material.dart';


class DoneRegistrationInfluencerScreen extends StatelessWidget {
  const DoneRegistrationInfluencerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10,),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close),
                  
                ),
              ],
            ),
            SizedBox(height: 80,),
            Text(
              'Registrasi Selesai',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 24,),
            Container(
                height: 300,
                child: Image.asset(
              'assets/icon/value.png',
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
