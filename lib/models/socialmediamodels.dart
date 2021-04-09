import 'package:flutter/material.dart';

class SocialLinks {
  final int id;
  final String title, image;
  final Color color;

  SocialLinks({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<SocialLinks> myServices = [
  SocialLinks(
    id: 1,
    title: "Github",
    image: "assets/images/html.png",
    color: Color(0xFFD9FFFC),
  ),
  SocialLinks(
    id: 2,
    title: "Instagram",
    image: "assets/images/python.png",
    color: Color(0xFFE4FFC7),
  ),
  SocialLinks(
    id: 3,
    title: "LinkedIn",
    image: "assets/images/flutter.png",
    color: Color(0xFFFFF3DD),
  ),
  SocialLinks(
    id: 4,
    title: "StackOverFlow",
    image: "assets/images/django.png",
    color: Color(0xFFFFE0E0),
  ),
    SocialLinks(
    id: 5,
    title: "Mail",
    image: "assets/images/django.png",
    color: Color(0xFFFFE0E0),
  ),

];