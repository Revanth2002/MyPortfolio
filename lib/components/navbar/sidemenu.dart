import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NavItem(title: "Home", tapEvent: (){}),
                SizedBox(height: 20,),
                NavItem(title: "Profile", tapEvent: (){}),
                SizedBox(height: 20,),
                NavItem(title: "Shop", tapEvent: (){}),
                SizedBox(height: 20,),
                NavItem(title: "Contact", tapEvent: (){}),
                SizedBox(height: 20,),
                NavItem(title: "About", tapEvent: (){}),
              ],
            ),
          )
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final GestureTapCallback tapEvent;
  const NavItem({Key key , @required this.title , @required this.tapEvent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                  fontSize: 18, 
                  color: ktextColorPurple, fontWeight: FontWeight.w500),
                )
        ),
      ),
    );
  }
}