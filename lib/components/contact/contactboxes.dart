import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';

class ContactBoxes extends StatefulWidget {
  final String iconSrc, name;
  final Color color,textColor;
  final Function press;

  ContactBoxes({Key key, this.iconSrc, this.name, this.color, this.press, this.textColor}) : super(key: key);

  @override
  _ContactBoxesState createState() => _ContactBoxesState();
}

class _ContactBoxesState extends State<ContactBoxes> {
    bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: MouseRegion(
        
        onEnter: (value) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (value) {
          setState(() {
            isHover = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 60,
          width: isBetweenTD3(context) ? 200 : 270,
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: isHover ? Colors.white : widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
             isHover ? Container(
               padding: EdgeInsets.symmetric(horizontal: isBetweenTD1(context) ? kDefaultPadding*1: kDefaultPadding*3),
               child: Center(
                 child: Text(
                   "8072195191",
                   style: GoogleFonts.oswald(
                     fontSize: 18,
                     fontWeight : FontWeight.w500,
                     color: widget.color
                   )
                 ),
               ),
             )
              : Image.asset(
                widget.iconSrc,
                height: 30,
                width: 30,
              ),
              if(isHover == false) SizedBox(width: kDefaultPadding),
              if(isHover == false) Text(widget.name,
                style: GoogleFonts.oswald(fontWeight: FontWeight.w500,color: kTextColorGray)
              ),
            ],
          ),
        ),
      ),
    );
  }
}