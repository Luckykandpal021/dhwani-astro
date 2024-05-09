import 'dart:async';

import 'package:dhwani_astro/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl_phone_field/phone_number.dart';

var verificationID = '';
int? _resendToken;
late Timer _timer;
int _secondsRemaining = 60;
Future<void> verifyPhoneNumber(String phoneNumber, BuildContext context) async {
  try {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        // Auto-retrieval completed (e.g., on Android)
        // Sign in with the credential
      },
      verificationFailed: (FirebaseAuthException e) {
        print('verification Failed verifyPhoneNumber:- ${e.message}');
        if (context != null) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Phone Verification Error"),
                  content: Text('Something Went Wrong ${e.message.toString()}'),
                );
              });
        }
        // Handle verification failure
      },
      codeSent: (String verificationId, int? resendToken) {
        verificationID = verificationId;
        _resendToken = resendToken;

        // Save verification ID and show UI to enter the code
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-retrieval timed out
      },
      timeout: const Duration(seconds: 30),
      forceResendingToken: _resendToken,
    );
  } catch (e) {
    // Handle and log verification errors
    print('Phone verification error: $e');
    if (context != null) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Phone Verification Error"),
              content: Text('Something Went Wrong ${e.toString()}'),
            );
          });
    }
  }
}

class OtpScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var otpValue = '';

  @override
  void initState() {
    super.initState();
    // Trigger the verification process after the widget has been initialized
    Future.delayed(Duration.zero, () {
      _initializeVerification();
    });
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_secondsRemaining < 1) {
          timer.cancel();
          // Timer completed, handle any post-timer actions here
        } else {
          _secondsRemaining--;
        }
      });
    });
  }

  Future<void> _initializeVerification() async {
    try {
      if (widget.phoneNumber != null &&
          widget.phoneNumber.length == 10 &&
          context != null) {
        // Call verifyPhoneNumber with formatted phone number
        startTimer();

        await verifyPhoneNumber("+91${widget.phoneNumber}", context);
      }
    } catch (e) {
      // Handle and log verification errors
      print('Error initializing verification: $e');
      if (context != null) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Phone Verification Error"),
              content: Text('Something Went Wrong: ${e.toString()}'),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 1,
        title: const Text(
          'Verify Phone',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Text(
              'OTP sent to +91 ${widget.phoneNumber}',
              style: const TextStyle(
                  color: Color.fromARGB(
                    255,
                    1,
                    134,
                    21,
                  ),
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: OtpTextField(
                numberOfFields: 6,
                focusedBorderColor: Color(0xfff9e82c),
                fieldHeight: 40,
                fieldWidth: 40,
                borderColor: Colors.white,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  otpValue = verificationCode;
                  // showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return AlertDialog(
                  //         title: Text("Verification Code"),
                  //         content: Text('Code entered is $verificationCode'),
                  //       );
                  //     });
                }, // end onSubmit
              ),
            ),
            GestureDetector(
              onTap: () async {
                if (otpValue.length == 6) {
                  final credential = PhoneAuthProvider.credential(
                      verificationId: verificationID, smsCode: otpValue);
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(credential);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  } catch (e) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("OTP Verification Error"),
                            content:
                                Text('Something Went Wrong ${e.toString()}'),
                          );
                        });
                  }
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20),
                  color: const Color(0xfff9e82c),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 7.0,
                      bottom: 7.0,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.refresh,
                    color: Color.fromARGB(
                      255,
                      1,
                      134,
                      21,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Resend OTP available in ${_secondsRemaining.toString()}s',
                    style: const TextStyle(
                      color: Color.fromARGB(
                        255,
                        1,
                        134,
                        21,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
