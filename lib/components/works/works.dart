import 'package:flutter/material.dart';
import 'package:portfolio/components/aboutme/aboutmecard.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contenttitle.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/components/works/workcard.dart';
import 'package:portfolio/models/worksmodel.dart';

class Works extends StatelessWidget {
  final GlobalKey dataKeyWorks;

  const Works({Key key, this.dataKeyWorks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      key: dataKeyWorks,
      padding: EdgeInsets.only(top: kDefaultPadding*3,bottom:kDefaultPadding*3 ),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
         color: Colors.white.withOpacity(0.7)
      ),
      child: Column(
        children: [
          ContentTitle(
            title: "Latest Works",
            subtitle:  "Look my exceptional projects",
            sideBoxColor: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: (size.width < 950 && size.width >=900) ? 20 
            : (size.width < 1050 && size.width >=950) ? 45 
            : (size.width < 1100 && size.width >=1050) ? 95 
            : (size.width < 900 && size.width >=600) ? 60
            : (size.width < 600 ) ? 20 : 0),
            child: SizedBox(
              width: 1100,
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(
                  worksList.length,
                  (index) => WorksCard(index: index, press: () {}),
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    ); 
  
  }
}