import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/responsive.dart';

class Menu extends StatefulWidget {
  final GlobalKey  keyHome ,keyAbout , keyWorks, keyServices , keyContact;
  const Menu({Key key, this.keyAbout, this.keyHome, this.keyWorks, this.keyServices, this.keyContact}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;


  List<String> menuItems = [
    "Home","About","Works","Services","Contact"
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    padding: EdgeInsets.symmetric(horizontal:isDesktop(context) ? kDefaultPadding * 7.0 
    : isTab(context) ? 0 : kDefaultPadding * 1.0),
    constraints: BoxConstraints(maxWidth:size.width),
    height: 100,
    decoration: BoxDecoration(
      color: kPrimaryColorPurpleLight,
      boxShadow: [kDefaultShadow],
    ),
    child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       if(!isMobile(context)) Expanded(
            child: Row(
      mainAxisAlignment: isTab(context) ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
      children: List.generate(menuItems.length, 
          (index) => buildNavbarItems(index)),
    ),
       ),

      if(isMobile(context)) Text(
        "My Portfolio",
        style: GoogleFonts.gabriela(
          textStyle: TextStyle(
          fontSize: 20, 
          color: ktextColorPurple, fontWeight: FontWeight.w700),
        )
      ) , 

        /* Add Drawer and uncomment in home.dart enddrawer */
       if(isMobile(context)) IconButton(
        onPressed: (){
          Scrollable.ensureVisible(widget.keyContact.currentContext);
     // Scaffold.of(context).openEndDrawer();
      },
    icon: Icon(Icons.contact_page_rounded,
      size: 27,color: ktextColorPurple,
    ))
      ],
    ),
        );
  }
    Widget buildNavbarItems(int index) => InkWell(
    
        onTap: () {
          setState(() {
            selectedIndex = index;  
          });
          if(selectedIndex == 0) Scrollable.ensureVisible(widget.keyHome.currentContext);
          if(selectedIndex == 1) Scrollable.ensureVisible(widget.keyAbout.currentContext);
          if(selectedIndex == 2) Scrollable.ensureVisible(widget.keyWorks.currentContext);
          if(selectedIndex == 3) Scrollable.ensureVisible(widget.keyServices.currentContext);
          if(selectedIndex == 4) Scrollable.ensureVisible(widget.keyContact.currentContext);
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                  fontSize: isTab(context) ? 18 : 20, 
                  color: ktextColorPurple, fontWeight: FontWeight.w700),
                )
              ),
              // Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );

}

