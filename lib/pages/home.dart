import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/aboutme/aboutme.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contact/contactme.dart';
import 'package:portfolio/components/lander.dart';
import 'package:portfolio/components/navbar/navbar.dart';
import 'package:portfolio/components/navbar/sidemenu.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/components/services/services.dart';
import 'package:portfolio/components/works/works.dart';

class HomePage extends StatelessWidget {
  final homeKey = new GlobalKey();
  final aboutKey = new GlobalKey();
  final worksKey = new GlobalKey();
  final servicesKey = new GlobalKey();
  final contactKey = new GlobalKey();
  final landerKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      /* Use this as an drawer
     endDrawer: ConstrainedBox(
       constraints: BoxConstraints(
         maxWidth: 400
       ),
       child: SideMenu(),
     ),*/
     floatingActionButton: Container(
       width: isMobile(context) ? 50 : 60,
       height:  isMobile(context) ? 50 : 60,
       child: FloatingActionButton(onPressed: (){
          Scrollable.ensureVisible(homeKey.currentContext);
        },
          child: Icon(CupertinoIcons.home,color: Colors.white,
          size: isMobile(context) ? 20 : 25,
          ),
          backgroundColor: ktextColorPurple.withOpacity(0.9),
          splashColor: Colors.white,
       ),
     ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            key: homeKey,
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height
            ),
            child: Stack(
                          children: [        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Add here
                        Container(         
                        child: Menu(
                           keyHome: homeKey,
                           keyAbout: aboutKey,
                           keyWorks: worksKey,
                           keyServices: servicesKey,
                           keyContact: contactKey,
                           ),
                      ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      Lander(dataKeyLander: landerKey,), 
                      AboutMe(dataKeyAbout: aboutKey,),
                      Works(dataKeyWorks: worksKey,),
                      Services(dataKeyService: servicesKey,),
                      ContactMe(dataKeyContact: contactKey,),
                          ],
                        )

                    ],
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}