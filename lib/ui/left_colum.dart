import 'package:cv/style/const.dart';
import 'package:cv/ui/left_colum/personal_avatar.dart';
import 'package:cv/ui/left_colum/skils_info.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'left_colum/about_me.dart';
import 'left_colum/hight20.dart';

class LeftColum extends StatelessWidget {
 final SizingInformation sizingInformation;
 LeftColum(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: MediaQuery.of(context).size.width/3*1,
      child: Column(
        children: [
          PersonalAvatar(),
          Hight20(),
          AboutMe(sizingInformation: sizingInformation),
          Hight20(),
          SkilsInfo(sizingInformation: sizingInformation)
        ],
      ),
    );
  }
}




