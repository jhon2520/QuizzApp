import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';


class Body extends StatelessWidget { 
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg",fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xFF3F4768),width: 3),
                    borderRadius: BorderRadius.circular(50)
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}