import 'package:flutter/material.dart';

class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

class WorksList{
  final int id;
  final String workImg;
  final String workTitle;
  final String workSubtitle;
  final String workField;
  final Color workColor;
  final String urlString;
  WorksList({this.id,this.workImg , this.workTitle, this.workSubtitle, this.workField,this.urlString,this.workColor});
  
}

List<WorksList> worksList = [
    WorksList(
      id: 1,
      workField: "Web",
      workTitle: "Adhinaath Enterprises",
      workSubtitle: "An Online Corporate Gift Shop Site",
      workImg: "assets/images/ae.png",
      workColor: Color(0xFFD9FFFC),
      urlString : "",
    ),
      WorksList(
      id: 2,
      workField: "App",
      workTitle: "GMusic",
      workSubtitle: "A Music Application With AI Voice Assistant",
      workImg: "assets/images/gmusic.jpeg",
      workColor: Color(0xFFFFB3B3),
      urlString: ""
    ),
    WorksList(
      id: 3,
      workField: "Web",
      workTitle: "NCR ",
      workSubtitle: "Featuring a 3-Star Accommodation Site",
      workImg: "assets/images/ncr.jpeg",
      workColor: Color(0xFFFFFFB3),
      urlString: "http://rrinnrpt.shop/"
    ),
      WorksList(
      id: 4,
      workField: "App",
      workTitle: "Medicare",
      workSubtitle: "A Virtual Platform Between Doctors And Patients",
      workImg: "assets/images/medicare.png",
      workColor: Color(0xFFDDFFCC),
      urlString: ""
    ),    
    WorksList(
      id: 5,
      workField: "Website",
      workTitle: "5+",
      workSubtitle: "Increasing Count Of Web Projects",
      workImg: "assets/images/5.png",
      workColor: Color(0xFFFFCCF6),
      urlString: ""
    ),
    WorksList(
      id: 6,
      workField: "App",
      workTitle: "3+",
      workSubtitle: "Marvellous Sum Up App Projects",
      workImg: "assets/images/3.png",
      workColor: Color(0xFFFFF3DD),
      urlString: ""
    ),
];

