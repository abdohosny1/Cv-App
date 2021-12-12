import 'package:cv/style/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TitleDescripationWideget extends StatelessWidget {
  const TitleDescripationWideget({
    Key? key,
    required this.descripation,
    required this.title,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String title;
  final String descripation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: sizingInformation.deviceScreenType !=DeviceScreenType.desktop ?
      const EdgeInsets.symmetric(horizontal: 16) :const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(),style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: primaryColor,
          ),),
          Wrap(
            children: [
              Text(descripation,style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 20,
                color: primaryColor,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}