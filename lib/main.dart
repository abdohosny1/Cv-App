import 'package:cv/style/const.dart';
import 'package:cv/ui/left_colum.dart';
import 'package:cv/ui/left_colum/about_me.dart';
import 'package:cv/ui/left_colum/hight20.dart';
import 'package:cv/ui/left_colum/personal_avatar.dart';
import 'package:cv/ui/left_colum/skils_info.dart';
import 'package:cv/ui/right_colum.dart';
import 'package:cv/ui/right_colum/content_widget.dart';
import 'package:cv/ui/right_colum/name_widget.dart';
import 'package:cv/ui/right_colum/personal_info.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(
    DevicePreview(
        builder: (context)=>MyApp(),
      enabled: !kReleaseMode,
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class  MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: ResponsiveBuilder(
              builder: (context,SizingInformation){
                return SizingInformation.deviceScreenType==DeviceScreenType.desktop ?
                    DesktopUi(sizingInformation:SizingInformation ,) :
                    MobileUi(sizingInformation: SizingInformation,) ;
              },
            ),  
          ),
        )
    );
  }
}

class MobileUi extends StatelessWidget {
  const MobileUi({
    Key? key,
    required this.sizingInformation
  }) : super(key: key);
  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //from left widget
        PersonalAvatar(),
        Hight20(),
        AboutMe(sizingInformation: sizingInformation),
        Hight20(),
        SkilsInfo(sizingInformation: sizingInformation),
        //from right widget
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NamedWidget(sizingInformation:sizingInformation ,),
                PersonalInfo(),
              ],
            ),
            ContentWidget(contentTitle: 'exprience', sizingInformation: sizingInformation),
            ContentWidget(contentTitle: 'education', sizingInformation: sizingInformation),
          ],
        )


      ],
    );
  }
}

class DesktopUi extends StatelessWidget {
  const DesktopUi({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);
  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(child: Container(
      color: backoundCpolor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeftColum(sizingInformation),
          RightColum(sizingInformation),

        ],
      ),
    ));
  }
}

