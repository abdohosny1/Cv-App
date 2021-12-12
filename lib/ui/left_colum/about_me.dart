import 'package:cv/style/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 32,),
      child: Column(
        children: [
          FittedBox(
            fit:BoxFit.fitWidth,
            child: Row(children: [
              Text('about me'.toUpperCase(),style: GoogleFonts.montserrat(fontSize: 50,
                  color: sizingInformation.deviceScreenType==DeviceScreenType.desktop ?
                  Colors.white :Colors.black,
                  fontWeight: FontWeight.w400
              ),)
            ],),
          ),
          Text(' remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum/Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\ making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ',
          textAlign: sizingInformation.deviceScreenType==DeviceScreenType.desktop ?
            TextAlign.justify : TextAlign.left,
          style: GoogleFonts.montserrat(fontSize: 20,
          color: sizingInformation.deviceScreenType==DeviceScreenType.desktop ?
          Colors.white :primaryColor,
          fontWeight: FontWeight.w100),)
        ],
      ),);
  }
}