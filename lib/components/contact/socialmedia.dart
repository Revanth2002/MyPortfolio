import 'package:email_launcher/email_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contact/neumprohicbutton.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:url_launcher/url_launcher.dart';


class SocialMediaLinks extends StatefulWidget {
  @override
  _SocialMediaLinksState createState() => _SocialMediaLinksState();
}

class _SocialMediaLinksState extends State<SocialMediaLinks> {


  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding*2,vertical: isMobile(context) ? kDefaultPadding : kDefaultPadding*2),
      width: double.infinity,
      child: isMobile(context) ? mobileSocialMedia()
      : isBetweenTD2(context) ? mobileSocialMedia() 
      : desktopSocialMedia()
    );
  }

  Widget desktopSocialMedia(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [        
              InkWell(
                 onTap: (){
                   print("yes");
                 },
                child: NeumorphicContainer(
                  url: "https://github.com/Revanth2002",
                child: Image.asset("assets/images/github.png"),
              ),
            ),
            SizedBox(width: 50,),
                       InkWell(
                 onTap: (){
                   print("yes");
                 },
                child: NeumorphicContainer(
                  url: "https://www.linkedin.com/in/revanth-nd-09/",
                child: Image.asset("assets/images/linkedin.png"),
              ),
            ),
            SizedBox(width: 50,),
            InkWell(
                 onTap: (){
                   print("yes");
                 },
                child: NeumorphicContainer(
                  url: "https://www.instagram.com/ndrevanth_09/",
                child: Image.asset("assets/images/instagram.png"),
              ),
            ),
            SizedBox(width: 50,),
            InkWell(
                 onTap: (){
                   print("yes");
                 },
                child: NeumorphicContainer(
                  url: "https://stackoverflow.com/users/14315440/revanth-n-d?tab=profile",
                child: Image.asset("assets/images/stackoverflow.png"),
              ),
            ),
            SizedBox(width: 50,),
            InkWell(
                child: NeumorphicContainer(
                  url: "mailto:ndrevanth09@gmail.com?subject=News&body=New%20plugin",
                child: Image.asset("assets/images/mail.png"),
              ),
            ),

        ],
      ) ;
  }

  Widget mobileSocialMedia(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
                 onTap: ()async{
                   //await launch("https://github.com/Revanth2002");
                   print("yes");
                 },
                child: NeumorphicContainer(
                url: "https://github.com/Revanth2002",
                child: Image.asset("assets/images/github.png"),
              ),
            ),
            SizedBox(height: 20,),
                       GestureDetector(
                child: NeumorphicContainer(
                  url: "https://www.linkedin.com/in/revanth-nd-09/",
                child: Image.asset("assets/images/linkedin.png"),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
                child: NeumorphicContainer(
                  url: "https://www.instagram.com/ndrevanth_09/",
                child: Image.asset("assets/images/instagram.png"),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
                child: NeumorphicContainer(
                  url: "https://stackoverflow.com/users/14315440/revanth-n-d?tab=profile",
                child: Image.asset("assets/images/stackoverflow.png"),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
                child: NeumorphicContainer(
                  url: "mailto:ndrevanth09@gmail.com?subject=News&body=New%20plugin",
                child: Image.asset("assets/images/mail.png"),
              ),
            ),

      
        ],
      );
  }
}

