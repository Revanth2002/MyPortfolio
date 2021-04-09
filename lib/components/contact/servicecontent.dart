import 'package:flutter/material.dart';
import 'package:portfolio/components/aboutme/aboutmecontent.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';

class ContactMeContent extends StatelessWidget {
  final String contactMeDesc = "Create your professional-looking website and apps with me and make your projects output an magnificient one . Choose your web or app , Choose you own design , Choose your own content and Choose me to get an attractive production to your projects. Contact me , Build your projects with me and get an desired valuable output.";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
             if(!isBetweenMT2(context))
               Container(
            margin: EdgeInsets.symmetric(horizontal: isDesktop(context) ? kDefaultPadding * 9.5 
            : isBetweenTD1(context) ? kDefaultPadding *3.5 : isBetweenTD2(context) ? 0 : 0), 
              child:  Row(
            children: [
                  Expanded(
                  flex: 1,
                    child: AboutMeContentBig(
                      content: contactMeDesc,
                    )
                ),
                  Expanded(
                  flex: 1,
                    child: Container(
                      child: Image.asset("assets/images/hiremecard.png",width: 100,height: 140,)),
                    ),  
      ],),
    ),
          if(isBetweenMT2(context))
              Container(
             margin: EdgeInsets.symmetric(horizontal:kDefaultPadding),
             child: Column(
               children: [
                 AboutMeContentMobile(
                        content: contactMeDesc,
                    ),
                    SizedBox(height: 20,),
                    SizedBox(height: 20,),
                Container(
                  child: Image.asset("assets/images/hiremecard.png",width: 150,height: 140,)),
              
               ],
             ), 
              )
       
        ],
      ),
    );
  }
}