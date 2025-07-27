import 'package:flutter/material.dart';
import 'package:space_app/additional/assets/img.dart';
import 'package:space_app/additional/theme/colors_app.dart';

class SecWidget extends StatelessWidget {
  String name ;
  String title;
   SecWidget({required this.name,required this.title,super.key});

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
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 24,color: ColorsApp.w),),
                Expanded(
                  child: Row(
                    children: [
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 24,color: ColorsApp.w),),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
        Positioned(child: SafeArea(
          child: FilledButton(
            onPressed: (){
              Navigator.pop(context);
            },
            style: FilledButton.styleFrom(
                backgroundColor: ColorsApp.r,
                foregroundColor: ColorsApp.w,
                padding: EdgeInsets.all(16),
                shape: CircleBorder()),
            child: Icon(Icons.arrow_back_outlined),
          ),
        ),)
      ],
    );
  }
}
