import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
//import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.cover),
        SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
          children: [
              Text(
                "Juguemos una trivia",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("Enter your information below")  
          ],
        ),
            ))
      ],
    );
  }
}
