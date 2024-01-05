import 'package:flutter/material.dart';

Widget menuProfil(String logo, String namaMenu) {
  return Row(
    children: [
      Image.asset('assets/profile/$logo.png'),
      SizedBox(width: 20,),
      Container(
        width: 340,
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(color: Color(0xff091C3F).withOpacity(0.08)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              namaMenu,
              style: TextStyle(fontFamily: 'Hanken'),
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_forward_ios_rounded,size: 10,),
            )
          ],
        ),
      ),
    ],
  );
}
