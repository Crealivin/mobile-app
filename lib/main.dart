import 'package:crealivin_apps/screen/brand_screen/brand_signin_screen.dart';
import 'package:crealivin_apps/screen/choosen_signin_screen.dart';
import 'package:crealivin_apps/screen/brand_screen/edit_profil_brand_screen.dart';
import 'package:crealivin_apps/screen/home_screen.dart';
import 'package:crealivin_apps/screen/influencer_screen/edit_profil_influencer_screen.dart';
import 'package:crealivin_apps/screen/influencer_screen/influencer_signin_screen.dart';
import 'package:crealivin_apps/screen/influencer_screen/verification_influencer_screen.dart';
import 'package:crealivin_apps/screen/splash_screen.dart';
import 'package:crealivin_apps/screen/brand_screen/brand_singup_screen.dart';
import 'package:crealivin_apps/screen/choosen_screen.dart';
import 'package:crealivin_apps/screen/influencer_screen/influencer_singup_screen.dart';
import 'package:crealivin_apps/screen/brand_screen/verification_brand_screen.dart';
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
        primarySwatch: Colors.orange,
        //textTheme: TextTheme(tit)
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (_) => const SplashScreen(), settings: settings);
          case '/home':
            return CupertinoPageRoute(
                builder: (_) => const HomeScreen(), settings: settings);
          case '/choose-signin':
            return CupertinoPageRoute(
                builder: (_) => const ChooseSignInScreen(), settings: settings);
          case '/choosen-signup':
            return CupertinoPageRoute(
                builder: (_) => const ChoosenScreen(), settings: settings);
          case '/brand-signin':
            return CupertinoPageRoute(
                builder: (_) => const BrandSignin(), settings: settings);
          case '/influencer-signin':
            return CupertinoPageRoute(
                builder: (_) => const InfluencerSignin(), settings: settings);
          case '/influencer-signup':
            return CupertinoPageRoute(
                builder: (_) => const InfluencerSignupScreen(),
                settings: settings);
          case '/brand-signup':
            return CupertinoPageRoute(
                builder: (_) => const BrandSignupScreen(), settings: settings);
          case '/verivication-brand-screen':
            return CupertinoPageRoute(
                builder: (_) => const VerificationBrandScreen(), settings: settings);
          case '/verivication-influencer-screen':
            return CupertinoPageRoute(
                builder: (_) => const VerificationInfluencerScreen(), settings: settings);
          case '/edit-profile-brand-screen':
            return CupertinoPageRoute(
                builder: (_) => const EditProfileBrandScreen(), settings: settings);
           case '/edit-profile-influencer-screen':
            return CupertinoPageRoute(
                builder: (_) => const EditProfileInfluencerScreen(), settings: settings);
        }
        return null;
      },
    );
  }
}
