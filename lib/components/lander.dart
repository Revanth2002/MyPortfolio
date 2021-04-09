import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'responsive.dart';

class Lander extends StatefulWidget {
  final GlobalKey dataKeyLander;

  const Lander({Key key, this.dataKeyLander}) : super(key: key);

  @override
  _LanderState createState() => _LanderState();
}

class _LanderState extends State<Lander> {
  bool hoveredCount = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: widget.dataKeyLander,
      width: size.width,
      height: isDesktop(context)
          ? size.height * 0.7
          : isTab(context)
              ? size.height * 0.6
              : size.height * 0.5,
      decoration: BoxDecoration(
        
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: isDesktop(context) ? 100 : 80,
                  horizontal: isDesktop(context)
                      ? 160
                      : isTab(context)
                          ? 100
                          : 60),
              child: Column(
                  mainAxisAlignment: !isMobile(context)
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.start,
                  crossAxisAlignment: !isMobile(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HEY THERE !',
                      style: GoogleFonts.raleway(
                        color: ktextColorPurple,
                        fontSize: isDesktop(context)
                            ? 39
                            : isTab(context)
                                ? 30
                                : 20,
                      ),
                    ),
                    SizedBox(height: isDesktop(context) ? 12 : 10),
                    Text(
                      'I AM REVANTH',
                      style: GoogleFonts.raleway(
                        color: ktextColorPurple,
                          fontSize: isDesktop(context)
                              ? 68
                              : isTab(context)
                                  ? 36
                                  : 26,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: isDesktop(context) ? 12 : 10),
                    Text(
                      'WEB AND APP DEVELOPER',
                      style: GoogleFonts.raleway(
                        color: ktextColorPurple,
                          fontSize: isDesktop(context)
                              ? 39
                              : isTab(context)
                                  ? 30
                                  : 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: isDesktop(context) ? 30 : 15),
                    if(!isMobile(context)) InkWell(
                        onTap: ()async{
                          await launch( "mailto:ndrevanth09@gmail.com?subject=News&body=New%20plugin");
                        },
                        child: MouseRegion(
                        onEnter: (value) {
                          setState(() {
                            hoveredCount = true;
                          });
                        },
                        onExit: (value) {
                          setState(() {
                            hoveredCount = false;
                          });
                        },
                        child: GestureDetector(
                          onTap: ()async{
                          await launch( "mailto:ndrevanth09@gmail.com?subject=News&body=New%20plugin");
                        },
                          child: AnimatedContainer(
                          duration: Duration(milliseconds: 275),
                          width: isDesktop(context) ? 240 : 120,
                          height: isDesktop(context) ? 40 : 30,
                          decoration: BoxDecoration(
                            color: hoveredCount ? ktextColorPurple : null,
                              border: Border.all(
                            color: ktextColorPurple,
                            width: 2,
                          )),
                          child: Center(
                            child: Text(
                              "MAIL ME",
                              style: GoogleFonts.raleway(
                                color: hoveredCount ?Colors.white : ktextColorPurple ,
                                  fontWeight: hoveredCount ? FontWeight.w800 : FontWeight.w700),
                            ),
                          ),
                            ),
                        ),
                      ),
                    ),
                    if(isMobile(context)) GestureDetector(
                      onTap: ()async{
                        await launch( "mailto:ndrevanth09@gmail.com?subject=News&body=New%20plugin");
                      },
                      child: Container(
                        width: isDesktop(context) ? 240 : 120,
                        height: isDesktop(context) ? 40 : 30,
                        decoration: BoxDecoration(
                            //color: Colors.transparent,
                            border: Border.all(
                              color: ktextColorPurple,
                              width: 2,
                            )),
                        child: Center(
                          child: Text(
                            "MAIL ME",
                            style: GoogleFonts.raleway(
                                color: ktextColorPurple ,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),

                  ]),
            ),
          ),
          if(size.width >= 700)Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: kDefaultPadding*3),
              child: Image.asset("assets/images/person.png",),
            ),
          )
        ],
      ),
    );
  }
}
