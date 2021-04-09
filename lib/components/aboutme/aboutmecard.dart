import 'package:flutter/material.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';

class AboutMeCard extends StatefulWidget {
  final String expYrs;
  AboutMeCard({Key key, this.expYrs}) : super(key: key);

  @override
  _AboutMeCardState createState() => _AboutMeCardState();
}

class _AboutMeCardState extends State<AboutMeCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1), 
        margin: EdgeInsets.symmetric(
            horizontal: isBetweenTD2(context)
                ? 0
                : isBetweenMT1(context)
                    ? 0
                    : kDefaultPadding,
            vertical: kDefaultPadding),
        padding: EdgeInsets.all(kDefaultPadding),
        width: double.maxFinite,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: _isHovered ? ktextColorPurple.withOpacity(0.6) : Color(0xFFFF6666).withOpacity(0.9),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 8,
                color: _isHovered ? Color(0xFFF7E8FF).withOpacity(0.9) : Color(0xFFFFFb3b3).withOpacity(0.9),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Text(
                    widget.expYrs,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:isBetweenMT1(context) ?  50  :90,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding / 2),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: isBetweenMT1(context) ? 3 : 0),
                child: Text(
                  "Years of Experience",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: isBetweenMT1(context) ? 13 : 15),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
