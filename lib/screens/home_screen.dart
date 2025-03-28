import 'package:flutter/material.dart';
import 'package:tamagotchi/widgets/animation_action.dart';
import 'package:tamagotchi/widgets/custom_button.dart';
import '../widgets/custom_scorebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_back.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.yellow,
                  height: size.height,
                  child: Column(
                    children: [
                      HungryScoreBar(),
                      HappyScoreBar(),
                      StaminaScoreBar(),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 4, child: Container(child: AnimationAction())),
              Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.blue,
                  height: size.height,
                  child: Row(
                    spacing: size.width / 10,
                    children: [
                      SizedBox(),
                      FeedButton(),
                      PlayButton(),
                      RestButton(),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
