import 'package:cv/ui/right_colum/content_widget.dart';
import 'package:cv/ui/right_colum/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'right_colum/name_widget.dart';

class RightColum extends StatelessWidget {
   SizingInformation sizingInformation;
   RightColum(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        margin: const EdgeInsets.only(top: 32,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                NamedWidget(sizingInformation: sizingInformation,),
                PersonalInfo()
              ],
            ),
            ContentWidget(contentTitle: 'exprience',sizingInformation: sizingInformation),
            ContentWidget(contentTitle: 'eductional',sizingInformation: sizingInformation),



          ],
        ),

      ),
    ));
  }
}


