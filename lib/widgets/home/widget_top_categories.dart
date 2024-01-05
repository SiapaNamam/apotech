import 'package:flutter/material.dart';

Widget topCategoriess(String logo, String tulisan) {
  return Container(
    padding: EdgeInsets.only(top: 5),
    width: 80,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.06),
        blurRadius: 23,
        offset: Offset(0, 6)
      ),
    ]),
    child: Column(
      children: [
        Image.asset('assets/home/top_categories/$logo',width: 60,),
        Text(tulisan,style: TextStyle(fontFamily: 'Overpass-Light'),)
      ],
    ),
  );
}
