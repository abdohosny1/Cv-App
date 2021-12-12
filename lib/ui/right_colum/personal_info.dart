import 'package:cv/style/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Continental New York, USA',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor
              ),),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Phone : +(0)1234 5555',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor
              ),),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('JhonWeak@gmail.com',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor
              ),),
          ),
        ],
      ),
    );
  }
}
