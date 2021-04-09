import 'package:flutter/material.dart';
import 'package:portfolio/components/aboutme/aboutmecard.dart';
import 'package:portfolio/components/aboutme/aboutmecontent.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contenttitle.dart';
import 'package:portfolio/components/responsive.dart';

class AboutMe extends StatelessWidget {
final GlobalKey dataKeyAbout;

  AboutMe({Key key, this.dataKeyAbout}) : super(key: key);
 
  final String aboutMe2 = "With 1+ years of experience developing Websites and Apps with great confident and maintaining it confidentially. Currently , I am taking part in and developing websites and apps from Garuda Technologies.";
  final String aboutMe1 = "On completion of my High School Diploma , I am proceeding with my Bachelor of Technology in Artificial Intelligence and Machine Learning from an honoured institution. As an inquistive person , I am curious to learn about Coding and developing new projects. More intent to learn new things and work on it. ";

  @override
  Widget build(BuildContext context) {
  return Container(
     key: dataKeyAbout,
       padding: EdgeInsets.symmetric(vertical: kDefaultPadding*3),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/backdrop5.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ContentTitle(
          title: "My Story ",
          subtitle: "Get to know about me",
          sideBoxColor: Colors.red,
            ),
          if(!isBetweenMT2(context))
               Container(
            margin: EdgeInsets.symmetric(horizontal: isDesktop(context) ? kDefaultPadding * 9.5 
            : isBetweenTD1(context) ? kDefaultPadding *3.5 : isBetweenTD2(context) ? 0 : 0), 
              child:  Row(
            children: [
                  Expanded(
                  flex: 1,
                    child: AboutMeContentBig(
                      content: aboutMe1 ,
                    )
                ),
                  Expanded(
                  flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: AboutMeCard(
                      expYrs: "1",
                    )
                  ),
                ),
                  Expanded(
                  flex: 1,
                    child: AboutMeContentBig(
                      content: aboutMe2 ,
                    ),
                ),  
      ],),
    ),
          if(isBetweenMT2(context))
              Container(
             margin: EdgeInsets.symmetric(horizontal:kDefaultPadding),
             child: Column(
               children: [
                 AboutMeContentMobile(
                        content: aboutMe1 ,
                    ),
                    SizedBox(height: 20,),
                    AboutMeCard(expYrs: "1",),
                    SizedBox(height: 20,),
               AboutMeContentMobile(
                        content: aboutMe2,
                    )             
               ],
             ), 
              )
        ],
      ),
    );
  }
}
