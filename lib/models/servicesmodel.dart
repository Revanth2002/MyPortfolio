import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Html/CSS",
    image: "assets/images/html.png",
    color: Color(0xFFFFE0E0),
  
  ),
  Service(
    id: 2,
    title: "Python",
    image: "assets/images/python.png",
  color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 3,
    title: "Flutter",
    image: "assets/images/flutter.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 4,
    title: "Django",
    image: "assets/images/django.png",
        color: Color(0xFFFFF3DD),
    
  ),

];