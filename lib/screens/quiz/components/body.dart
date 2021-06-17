import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';
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
                ProgressBar(),
                SizedBox(height: kDefaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Pregunta 1",
                        style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: "/10",
                            style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: kSecondaryColor)
                          )
                        ]
                      )
                    ),
                  ],
                ),
                Divider(thickness: 1.5,),
                SizedBox(height: kDefaultPadding,),
                QuestionCard()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]["question"],
            style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: kBlackColor,fontSize: 16,fontWeight: FontWeight.bold)
          ),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1. test",
            style: TextStyle(color: kGrayColor,fontSize: 16),
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: kGrayColor),
            ),
          )
        ],
      ),
    );
  }
}

