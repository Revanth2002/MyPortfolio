import 'package:flutter/material.dart';

const kTextColorGray = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);
const ktextColorPurple = Color(0xFF1F176C);

const kPrimaryColorPurpleLight = Color(0xFFE6E6FA);
const kPrimaryColorGreen = Color(0XFF88C54D);
const kSecondaryColorYellow = Color(0XFFFFC906);
const kTextColorBlack = Color(0XFF282828);


const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);