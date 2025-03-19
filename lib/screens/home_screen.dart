import 'package:flutter/material.dart';
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(child: Text("Tamagotchi")),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
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
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
                height: size.height,
                child: Image.network(
                  "https://i.pinimg.com/474x/da/c3/d1/dac3d1efce902fefe38a9288e81d3cec.jpg",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
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
    );
  }
}
