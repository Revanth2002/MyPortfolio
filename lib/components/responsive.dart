import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;
bool isTab(BuildContext context) => MediaQuery.of(context).size.width < 1300 && MediaQuery.of(context).size.width >= 650;
bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1300;

bool isBetweenTD1(BuildContext context) => MediaQuery.of(context).size.width < 1300 && MediaQuery.of(context).size.width >=900; 
bool isBetweenTD2(BuildContext context) => MediaQuery.of(context).size.width > 650 && MediaQuery.of(context).size.width < 900; 
bool isBetweenTD3(BuildContext context) => MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >=900; 

bool isBetweenMT1(BuildContext context) => MediaQuery.of(context).size.width > 500 && MediaQuery.of(context).size.width <=650; 
bool isBetweenMT2(BuildContext context) => MediaQuery.of(context).size.width <= 500 ; 