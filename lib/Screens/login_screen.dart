import 'package:dhwani_astro/Screens/home_screen.dart';
import 'package:dhwani_astro/Screens/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _inputPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final whiteContainerHeight = screenHeight * 0.3; // Top half
    final yellowContainerHeight = screenHeight * 0.7; // Bottom half

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: whiteContainerHeight,
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xfff9e82c),
                    height: yellowContainerHeight,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomeScreen())));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            inherit: false,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/dhwani_Astro_launcher.png',
                  height: 120,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Dhwani Astro',
                  style: TextStyle(
                      inherit: false,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(139, 0, 0, 0),
                          width: 0.5), //Border.all
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'First Chat with Astrologer is FREE!',
                          style: TextStyle(
                            fontSize: 16,
                            inherit: false,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 60),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          Colors.white, // Set the desired background color here
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IntlPhoneField(
                        disableLengthCheck: true,
                        controller: _inputPhoneNumber,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: InputBorder
                              .none, // Hide the border of the TextField
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 35, right: 35, top: 20),
                    child: GestureDetector(
                      onTap: () {
                        print(
                            '_inputPhoneNumber.text.toString():- ${_inputPhoneNumber.text.toString()}');
                        if (_inputPhoneNumber.text.length == 10) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => OtpScreen(
                                      phoneNumber:
                                          _inputPhoneNumber.text.toString()))));
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Phone Number Error:"),
                                  content:
                                      Text('Please Enter Correct Phone Number'),
                                );
                              });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Text(
                                'GET OTP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 13),
                  child: RichText(
                    text: TextSpan(
                      text: 'By signing up, you agree to our ',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(181, 0, 0, 0),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms of Use',
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            // Customize the color as desired
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // _launchURL(
                              //     'https://dhwaniastro.com/terms-and-conditions');
                            },
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            // Customize the color as desired
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // _launchURL(
                              //     'https://dhwaniastro.com/privacy-policy');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.26,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '100%',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('Privacy')
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 65,
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                      const Column(
                        children: [
                          Text(
                            '10000+',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('Top astrologers \nof India'),
                          )
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 65,
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                      const Column(
                        children: [
                          Text(
                            '3Cr+',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text('Happy \ncustomers'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
