import 'package:cv/style/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NamedWidget extends StatelessWidget {
  const NamedWidget({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);
  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text('JOGN Wick',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: sizingInformation.deviceScreenType ==DeviceScreenType.desktop ?50 :30,
              color: Colors.white
            ),),
          ),

        ),
      ],),
    );
  }
}
