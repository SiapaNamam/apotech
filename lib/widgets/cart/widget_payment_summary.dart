import 'package:flutter/material.dart';

Widget paymentSummary(String judul, String harga) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        judul,
        style: TextStyle(
          fontFamily: 'Overpass-regular',
          color: Color(0xff090F47).withOpacity(0.45),
        ),
      ),
      Text(
        harga,
        style: TextStyle(
          fontFamily: 'Overpass-regular',
          color: Color(0xff090F47),
        ),
      )
    ],
  );
}
