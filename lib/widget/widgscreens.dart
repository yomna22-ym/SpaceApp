import 'package:flutter/material.dart';
import 'package:space_app/additional/assets/img.dart';
import 'package:space_app/additional/theme/colors_app.dart';


class Widgscreens extends StatelessWidget {
  const Widgscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Img.rect,width: double.infinity,),
        Positioned.fill(child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Colors.transparent,
                ColorsApp.b],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Explore",style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 24,color: ColorsApp.w),),
                Row(
                  children: [
                    Text("Which planet\nwould you like to explore?",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 24,color: ColorsApp.w),),
                  ],
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}
