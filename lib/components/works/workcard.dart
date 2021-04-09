import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/models/worksmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksCard extends StatefulWidget {
  final int index;
  final Function press;

  WorksCard({Key key, this.index, this.press}) : super(key: key);

  @override
  _WorksCardState createState() => _WorksCardState();
}

class _WorksCardState extends State<WorksCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
                  onTap: () async{
              if(worksList[widget.index].urlString != "" ){
              await launch(worksList[widget.index].urlString);
              }else{
                return;
              }
            },
          child: MouseRegion(
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
            child: AnimatedContainer( 
          duration: Duration(milliseconds: 200),
          height: isBetweenTD3(context) ? 180 
              : size.width < 500 ? 150 : 220 ,
          width: isBetweenTD3(context) ? 420 
              : size.width < 900  ? size.width : 540 ,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [if (_isHovered) kDefaultCardShadow],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: size.height,
                    decoration: BoxDecoration(
                      boxShadow: [
             BoxShadow(
                color: _isHovered ? worksList[widget.index].workColor : Colors.black.withOpacity(0.2),
                offset: const Offset(
                  3.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), 
                      ]
                    ),
                    child: ClipRRect(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft:Radius.circular(10) ),
                        child: Image.asset(
            worksList[widget.index].workImg,
            fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: size.height,  
                    decoration: BoxDecoration(
                      color: Colors.white,//worksList[widget.index].workColor,
                       borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight:Radius.circular(10) ),
                       boxShadow: [
             BoxShadow(
                color: _isHovered ? worksList[widget.index].workColor : Colors.black.withOpacity(0.2),
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              
                       ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(worksList[widget.index].workField.toUpperCase()),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                worksList[widget.index].workTitle,
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold,fontSize: _isHovered ? (size.width < 500) ? 17 : 24 
                  : (size.width < 500) ? 15 : 22),
              ),
              SizedBox(height: 10),
                 Text(
                worksList[widget.index].workSubtitle,
                style: GoogleFonts.lato(fontWeight: FontWeight.w500 , fontSize : (size.width < 500) ? 13 : 18),
              ),
               SizedBox(height: 10),
            ],
                      ),
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
