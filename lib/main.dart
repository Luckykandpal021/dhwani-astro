import 'dart:async';
import 'package:dhwani_astro/Screens/home_screen.dart';
import 'package:dhwani_astro/Screens/otp_screen.dart';
import 'package:dhwani_astro/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'package:dhwani_astro/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

late final FirebaseApp app;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xfff9e82c),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391

  // We store the app and auth to make testing with a named instance easier.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dhwani Astro',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => LoginScreen())));
    });
    // Timer(const Duration(seconds: 1), () {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: ((context) => const OtpScreen())));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/dhwani_Astro_launcher.png",
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0),
                child: Text(
                  'Dhwani Astro',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      inherit: false,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/splash_dhwani_Astro.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
