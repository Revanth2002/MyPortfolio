import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contenttitle.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/components/services/ServiceCard.dart';
import 'package:portfolio/components/services/myservicescard.dart';
import 'package:portfolio/models/servicesmodel.dart';

class Services extends StatefulWidget {
  final GlobalKey dataKeyService;

  Services({Key key, this.dataKeyService}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.dataKeyService,
      padding: EdgeInsets.only(
          top: kDefaultPadding * 3, bottom: kDefaultPadding * 3),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
              colorFilter: 
      ColorFilter.mode(Color(0xFFE8F0F9).withOpacity(0.25), 
      BlendMode.dstATop),
          image: AssetImage("assets/images/backdrop2.jpeg"),
        ),
      ),
      child: Column(
        children: [
           ContentTitle(
            title: "Tech Services",
            subtitle:  "Premier provided service ",
            sideBoxColor: Colors.deepPurple,
          ),
          SizedBox(height: 30 ,),
          serviceText("My Tech",ktextColorPurple),
          SizedBox(height: 30 ,),
         if(!isMobile(context)) Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  services.length, (index) => ServiceContentCard(index: index)),
            ),
          if(isMobile(context)) Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                services.length, (index) => ServiceContentCard(index: index,)),
          ),
          SizedBox(height: 30 ,),
           serviceText("My Services",ktextColorPurple),
           SizedBox(height: 30 ,),
                    if(!isMobile(context)) Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  services.length, (index) => MyServiceCard(index: index)),
            ),
          if(isMobile(context)) Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                services.length, (index) => MyServiceCard(index: index,)),
          ),
        ],
      ),
    );
  }

  Widget serviceText(String title, Color textColor){

    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Container(
          height: 5,
          width:  70,
          color: textColor ,  
        ),
        SizedBox(width: 15,),
        Text(
        title,
        style: GoogleFonts.raleway(
          color: ktextColorPurple,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      SizedBox(width: 15,),
                  Container(
          height: 5,
          width:  70,
          color: textColor ,  
        ),
    ],
      );
  }
}
