import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.cover),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  "Juguemos una trivia",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Ingrese su información",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Ingrese su nombre",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular((12))))),
                ),
                Spacer(),
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding *0.75), // ** 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Text("¡Empezar!", style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: Colors.black)
                    ,)
                  ),
                ),
                Spacer(flex: 2,)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
