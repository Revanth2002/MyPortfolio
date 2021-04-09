import 'package:flutter/material.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/components/contact/contactboxes.dart';
import 'package:portfolio/components/responsive.dart';

class ContactBoxRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding*2),
      child: isMobile(context)      
      ? mobileContact()
      : isBetweenTD2(context) ? mobileContact() 
          :desktopContact()

    );
  }

  Widget mobileContact(){
    String number = "8072195191";
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContactBoxes(
            name: number,
             color: Color(0xFF1CEC23).withOpacity(0.5),
            iconSrc: "assets/images/whatsapp.png",
            
          ),
          SizedBox(height: 10,),
            ContactBoxes(
            name: number,
             color: Color(0xFF009688).withOpacity(0.4),
            iconSrc: "assets/images/phone.png",
          ),
          SizedBox(height: 10,),
            ContactBoxes(
            name: number,
             color: Color(0xFF039be5).withOpacity(0.5),
            iconSrc: "assets/images/telegram.png",
          ),
        ],
      );
  }
  
  Widget desktopContact(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContactBoxes(
            name: "Whatsapp",
             color: Color(0xFF1CEC23).withOpacity(0.5),
            iconSrc: "assets/images/whatsapp.png",
            
          ),
          SizedBox(width: 50,),
            ContactBoxes(
            name: "Mobile ",
             color: Color(0xFF009688).withOpacity(0.4),
            iconSrc: "assets/images/phone.png",
          ),
          SizedBox(width: 50,),
            ContactBoxes(
            name: "Telegram",
             color: Color(0xFF039be5).withOpacity(0.5),
            iconSrc: "assets/images/telegram.png",
          ),
        ],
      );
  }
}