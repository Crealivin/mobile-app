import 'package:crealivin_apps/screen/brand_screen/brand_singup_screen.dart';
import 'package:crealivin_apps/screen/choosen_screen.dart';
import 'package:crealivin_apps/screen/influencer_screen/influencer_singup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      // apabila ke production ganti ke false
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (_) => ChoosenScreen(), settings: settings);
          case '/influencer-signup':
            return CupertinoPageRoute(
                builder: (_) => InfluencerSignupScreen(), settings: settings);
          case '/brand-signup':
            return CupertinoPageRoute(
                builder: (_) => BrandSignupScreen(), settings: settings);
        }
        return null;
      },
    );
  }
}
