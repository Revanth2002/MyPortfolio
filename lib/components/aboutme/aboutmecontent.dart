import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';

class AboutMeContentBig extends StatelessWidget {
  final String content;

  const AboutMeContentBig({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        content,
        style: GoogleFonts.raleway(
          fontSize: isBetweenTD2(context)
              ? 13
              : isBetweenMT1(context)
                  ? 12
                  : 15,
          color: kTextColorGray,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class AboutMeContentMobile extends StatelessWidget {
  final String content;

  const AboutMeContentMobile({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        content,
        style: GoogleFonts.raleway(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: kTextColorGray,
        ),
      ),
    );
  }
}