import 'package:flutter/material.dart';
import 'package:space_app/additional/models/plant.dart';
import 'package:space_app/additional/theme/colors_app.dart';
import 'package:space_app/screens/plant_details.dart';
import 'package:space_app/widget/widgscreens.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pgController = PageController(initialPage: 0);
  int selectedInx = 0;

  @override
  void initState() {
    super.initState();
    pgController.addListener(() {
      if (pgController.page! % 1 == 0) {
        selectedInx = pgController.page!.toInt();
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.b,
      body: Column(
        children: [
          Widgscreens(),
          Expanded(
            child: PageView.builder(
                controller: pgController,
                itemBuilder: (context, index) => Image.asset(
                    "assets/images/${Plant.plants[index % 9].img}")),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                  onPressed: () {
                    if (selectedInx != 0) {
                      pgController.animateToPage((selectedInx - 1),
                          duration: Duration(microseconds: 300),
                          curve: Curves.easeInOut);
                    }
                  },
                  style: FilledButton.styleFrom(
                      foregroundColor: ColorsApp.w,
                      backgroundColor: ColorsApp.r,
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder()),
                  child: Icon(Icons.arrow_back_outlined),
                ),
                Text(
                  Plant.plants[selectedInx % 9].name,
                  style: TextStyle(
                      color: ColorsApp.w,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                FilledButton(
                    onPressed: () {
                      pgController.animateToPage((selectedInx + 1),
                          duration: Duration(microseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    style: FilledButton.styleFrom(
                        foregroundColor: ColorsApp.w,
                        backgroundColor: ColorsApp.r,
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder()),
                    child: Icon(Icons.arrow_forward_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: ColorsApp.r,
                    foregroundColor: ColorsApp.w,
                    padding: EdgeInsets.all(16),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                onPressed: () {
                  Navigator.pushNamed(context, PlantDetails.routeName,
                      arguments: Plant.plants[selectedInx % 9]);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Explore ${Plant.plants[selectedInx % 9].name}"),
                    Icon(Icons.arrow_forward_outlined)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
