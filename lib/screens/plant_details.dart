import 'package:flutter/material.dart';
import 'package:space_app/additional/models/plant.dart';
import 'package:space_app/additional/theme/colors_app.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/widget/info.dart';
import 'package:space_app/widget/sec_widget.dart';
class PlantDetails extends StatefulWidget {
  static const String routeName ='plant_details';
   const PlantDetails({super.key});

  @override
  State<PlantDetails> createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  Flutter3DController controller = Flutter3DController();
  @override
  Widget build(BuildContext context) {
    Plant plant = ModalRoute.of(context)?.settings.arguments as Plant;
    return Scaffold(
      backgroundColor: ColorsApp.b,
      body: Column(
        children: [
           SecWidget(title: plant.title, name: plant.name,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                AspectRatio(
                  aspectRatio:1,
                  child: Flutter3DViewer(
                      activeGestureInterceptor: true,
                      progressBarColor: Colors.red,
                      enableTouch: true,
                      controller:controller,
                      src:plant.model),
                ),
                Text('About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: ColorsApp.w),),
                SizedBox(height: 16,),
                Text(plant.about,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: ColorsApp.w),),
                Info(title: 'Distance from sun(km) : ${plant.distanceFromSun}'),
                Info(title: 'Length of Day(hours) : ${plant.lengthOfDay}'),
                Info(title: 'Orbital Period(Earth Years) : ${plant.orbitalPeriod}'),
                Info(title: 'Radius(km) : ${plant.radius}'),
                Info(title: 'Mass(kg) : ${plant.mass}'),
                Info(title: 'Gravity(m/s²) : ${plant.gravity}'),
                Info(title: 'Surface Area(km²) : ${plant.surfaceArea}'),

              ],
            ),
          )
        ],
      )
    );
  }
}
