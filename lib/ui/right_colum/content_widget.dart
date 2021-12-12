import 'package:cv/style/const.dart';
import 'package:cv/ui/right_colum/title_Descripation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.contentTitle,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String contentTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding: sizingInformation.deviceScreenType != DeviceScreenType.desktop ?
          const EdgeInsets.symmetric(horizontal: 16) : const EdgeInsets.all(0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(contentTitle.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87
                      ),)
                  ],
                )
              ],
            ),
          ),
        ),
        TitleDescripationWideget(
            descripation: 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
            title: 'elite killer(2020-now)'
            ,sizingInformation: sizingInformation),
        TitleDescripationWideget(
            descripation: 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
            title: 'elite killer(2020-now)'
            ,sizingInformation: sizingInformation),
        TitleDescripationWideget(
            descripation: 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
            title: 'elite killer(2020-now)'
            ,sizingInformation: sizingInformation),
      ],
    );
  }
}

