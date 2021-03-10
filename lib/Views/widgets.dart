import 'package:flutter/material.dart';

Color primary = Color(0xFF66bfbf);
Color bg = Colors.white;
Color buttonColor = Color(0xFFf76b8a);

OutlineInputBorder gBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(
        color: Colors.grey[400]
    )
);

OutlineInputBorder TBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(
        color: primary
    )
);
BoxDecoration dec1 = BoxDecoration(
  borderRadius: BorderRadius.circular(6),
  border: Border.all(color: primary)
);
BoxDecoration decM = BoxDecoration(
  border: Border.all(color: Colors.grey)
);

TextStyle f17 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w400
);
TextStyle f17wB = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w500,
  fontSize: 17
);
TextStyle f16B = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold
);
TextStyle f15wB = TextStyle(
  color: Colors.white,
  fontSize: 15,
  fontWeight: FontWeight.bold
);

TextStyle f15 = TextStyle(
    fontSize: 15,
);

TextStyle f15T = TextStyle(
  color: primary,
    fontSize: 15,
    decoration: TextDecoration.underline
);
TextStyle f14g = TextStyle(
  fontSize: 14,
  color: Colors.grey[600]
);


TextStyle f13g = TextStyle(
  color: Colors.grey,
  fontSize: 13,
);
TextStyle f13gT = TextStyle(
  fontSize: 13,
    color: Colors.grey,
    decoration: TextDecoration.underline
);

TextStyle f11g = TextStyle(
  color: Colors.grey,
  fontSize: 11,
);