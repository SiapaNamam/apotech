import 'package:apotech/login.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:apotech/widgets/otp/widget_otp.dart';
import 'package:flutter/material.dart';


class VerifyOtp extends StatefulWidget {
  static const routname = '/verify_otp';
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            );
          }),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter the verify code',
                  style: TextStyle(fontFamily: 'Overpass-Bold', fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'We just send you a verification code via phone\n+62 821 39 953',
                  style: TextStyle(
                    fontFamily: 'Overpass-light',
                    color: const Color(0xff090F47).withOpacity(0.45),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < 6; i++) otp('0'),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routename);
                  },
                  child: blueButton('SUBMIT CODE'),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'The verify code will expire in 00:59',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Overpass-light',
                          color: const Color(0xff090F47).withOpacity(0.45),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Resend Code',
                          style: TextStyle(
                            fontFamily: 'Overpass-Regular',
                            color: Color(0xff4157FF),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
