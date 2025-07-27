import 'package:flutter/material.dart';
import 'package:space_app/additional/theme/colors_app.dart';

class Info extends StatelessWidget {
  final String title;
  const Info({required this .title,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
        Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: ColorsApp.w),)
      ],
    ) ;
  }
}
