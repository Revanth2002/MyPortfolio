import 'package:flutter/material.dart';

class MyService {
  final int id;
  final String title, image;
  final Color color;

  MyService({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<MyService> myServices = [
  MyService(
    id: 1,
    title: "Web ",
    image: "assets/images/web.png",
    color: Color(0xFF8e44ad).withOpacity(0.5),
  ),
  MyService(
    id: 2,
    title: "Exemplary UX",
    image: "assets/images/ux.png",
    color: Color(0xFF1c92d2).withOpacity(0.5),
  ),
  MyService(
    id: 3,
    title: "Interactive UI",
    image: "assets/images/ui.png",
    color: Color(0xFFFCB356B).withOpacity(0.5),
  ),
  MyService(
    id: 4,
    title: "App",
    image: "assets/images/app.png",
    color: Color(0xFF06beb6).withOpacity(0.5),
  ),

];