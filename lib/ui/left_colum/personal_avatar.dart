import 'package:flutter/material.dart';

class PersonalAvatar extends StatelessWidget {
  const PersonalAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/test.jpg',fit: BoxFit.cover,);
  }
}
