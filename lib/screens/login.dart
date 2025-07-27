import 'package:flutter/material.dart';
import 'package:space_app/additional/assets/img.dart';
import 'package:space_app/additional/theme/colors_app.dart';
import 'home.dart';

class Login extends StatelessWidget {
  static const String routeName = "/login";

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.b,
      body: Stack(
        children: [
          Image.asset(
            Img.frame1,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: FittedBox(
                        child: Text(
                          "Explore\nThe\nUniverse",
                          style: TextStyle(
                              color: ColorsApp.w, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: FilledButton(
                  style: FilledButton.styleFrom(
                      backgroundColor: ColorsApp.r,
                      foregroundColor: ColorsApp.w,
                      padding: EdgeInsets.all(16),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Home.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Explore"),
                      Icon(Icons.arrow_forward_outlined)
                    ],
                  )))
        ],
      ),
    );
  }
}
