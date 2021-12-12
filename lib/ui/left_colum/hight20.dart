import 'package:flutter/material.dart';

class Hight20 extends StatelessWidget {
  const Hight20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height/20*1,);
  }
}
