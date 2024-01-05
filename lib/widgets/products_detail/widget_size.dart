import 'package:flutter/material.dart';

Widget size(String harga, String jumlah, bool active) {
  return Container(
    width: 79,
    decoration: BoxDecoration(
      color: active ? Color(0xffFFA41B).withOpacity(0.05) : Color(0xffF5F5F5),
      borderRadius: BorderRadius.circular(6),
      border: active
          ? Border.all(
              color: Color(0xffFFA41B),
              width: 1,
            )
          : null,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Rp $harga',
          style: TextStyle(
            color: active ? Color(0xffFFA41B) : Color(0xff090F47),
            fontFamily: 'Overpass-bold',
            fontSize: 10
          ),
        ),
        Text(
          '$jumlah pellets',
          style: TextStyle(
            color: active
                ? Color(0xffFFA41B)
                : Color(0xff090F47).withOpacity(0.75),
            fontFamily: 'Overpass-regular',
            fontSize: 12
          ),
        )
      ],
    ),
  );
}
