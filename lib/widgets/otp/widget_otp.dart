import 'package:flutter/material.dart';

Widget otp(String angka) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: BorderDirectional(
        bottom: BorderSide(
          color: const Color(0xff090F47).withOpacity(0.1),
        ),
      ),
    ),
    child: Center(
        child: Text(
      angka,
      style: TextStyle(
        fontSize: 35,
        fontFamily: 'Overpass',
        color: Color(0xff090F47).withOpacity(0.45),
      ),
    )),
  );
}
