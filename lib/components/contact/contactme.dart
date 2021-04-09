import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contact/mobilenumber.dart';
import 'package:portfolio/components/contact/servicecontent.dart';
import 'package:portfolio/components/contact/socialmedia.dart';
import 'package:portfolio/components/contenttitle.dart';
import 'package:portfolio/components/responsive.dart';

class ContactMe extends StatelessWidget {


  final GlobalKey dataKeyContact;
  ContactMe({Key key, this.dataKeyContact}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: dataKeyContact,
      padding: EdgeInsets.only(top: kDefaultPadding*3,bottom:kDefaultPadding ),
      width: double.infinity,
      decoration: BoxDecoration(
                    image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/halfcut.png"),
                   ),
         color: Colors.white.withOpacity(0.7)
      ),
      child: Column(
        children: [
          ContentTitle(
            title: "Contact Me",
            subtitle: "Lets join for  magnificent projects",
            sideBoxColor: Colors.blueAccent,
          ),
          SizedBox(height: 60,),
          ContactMeContent(),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: isDesktop(context) ? kDefaultPadding*5
             : isTab(context) ?  kDefaultPadding*2 :  10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
            child: Column(
              children: [
            ContactBoxRow(),
            SocialMediaLinks(),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "From",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(),
                        color: kTextColorGray,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "  Garuda",
                      style: GoogleFonts.lato(
                        color: kTextColorBlack,
                        fontWeight: FontWeight.w800,
                        fontSize: 19,
                      ),
                    ),
                  ]
                )
                )
            ),
            SizedBox(
              height: 10,
            ),
            ],),
          ),
        ],
      ),
    );
  }
}