import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';

class ContentTitle extends StatelessWidget {
final String title,subtitle;
final Color sideBoxColor;
const ContentTitle({Key key, this.title, this.subtitle, this.sideBoxColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      height:  100,
      child: Row(
        children: [
            Container(
              margin: EdgeInsets.only(right: kDefaultPadding , left: isTab(context) ? kDefaultPadding* 2 : isMobile(context) ? kDefaultPadding : 0),
              padding: EdgeInsets.only(bottom : 72),
              width: 8,
              height:  100,
              color: Colors.black,
              child: DecoratedBox(decoration: BoxDecoration(
                color: sideBoxColor,
                border: Border.all(
                  color: Colors.transparent,
                )
              ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                                Text(
                  title,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: ktextColorPurple,
                    fontSize: isMobile(context) ?28 : 35 
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: kTextLightColor,
                    
                  ),
                ),

              ],
            )
      ],),
    );
  }
}