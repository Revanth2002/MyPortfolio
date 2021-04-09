import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/models/myservices.dart';

class MyServiceCard extends StatefulWidget {
  MyServiceCard({Key key, this.index, }) : super(key: key);

  final int index;

  @override
  _MyServiceCardState createState() => _MyServiceCardState();
}

class _MyServiceCardState extends State<MyServiceCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
     double dimension = isBetweenTD3(context) ? 200 : isBetweenTD2(context) ? 140 : isMobile(context) ? 220 : 260;
     double animatedDimension = isBetweenTD2(context) ? 90 :  isMobile(context) ? 90 :120;
     Size size = MediaQuery.of(context).size;
    return  MouseRegion(
      onEnter: (value){
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (value){
        setState(() {
          _isHovered = false;
        });
      },
      child:  AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: EdgeInsets.symmetric(vertical: isBetweenTD3(context) ? kDefaultPadding 
        : isBetweenTD2(context) ? 20 
        : kDefaultPadding * 2,),
       //padding: EdgeInsets.all(isMobile(context) ? kDefaultPadding * 1.5 : 0),
        height: dimension,
        width:  dimension,
        decoration: BoxDecoration(
          color: Colors.white,//myServices[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: _isHovered ? Colors.white : myServices[widget.index].color,
            width: 2
          ),
          boxShadow: [if (_isHovered) BoxShadow(
            offset: Offset(0, 20),
            blurRadius: 50,
            color:myServices[widget.index].color,
          )],
        ),
         
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(!isMobile(context))  AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.all(kDefaultPadding * 1.5),
                height: animatedDimension,
                width:  animatedDimension,
                decoration: BoxDecoration(
                  color: _isHovered ? Colors.white : myServices[widget.index].color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!_isHovered)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
                child: Image.asset(
                   myServices[widget.index].image ,
                  fit: isMobile(context) ? BoxFit.contain : BoxFit.cover,
                ),
              ),
            if(!isMobile(context))  SizedBox(height: kDefaultPadding),
            if(!isMobile(context))  Text(
                myServices[widget.index].title,
                style: GoogleFonts.lato(
                  fontSize:  isBetweenTD2(context) ? 17 :22,
                  fontWeight: FontWeight.w600,
                  color: kTextColorGray
                ),
              ),
            
            if(isMobile(context)) AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.all(kDefaultPadding * 1.5), 
                width:  double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!_isHovered)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
                child: Image.asset(
                  myServices[widget.index].image,
                 height: isMobile(context) ? 100 : 300,
                 // width: isMobile(context) ? 100 : double.infinity,
                  fit: isMobile(context) ? BoxFit.contain : BoxFit.cover,
                ),
              ),
            if(isMobile(context)) SizedBox(height: 20),
            if(isMobile(context)) Text(
                myServices[widget.index].title,
                style: GoogleFonts.lato(
                  fontSize:  17,
                  fontWeight: FontWeight.w600,
                  color: kTextColorGray
                ),
              ),
          
          ],
        ),
      ),
    );
  }
}

