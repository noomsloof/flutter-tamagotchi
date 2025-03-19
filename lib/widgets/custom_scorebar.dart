import 'package:flutter/material.dart';

class HappyScoreBar extends StatefulWidget {
  const HappyScoreBar({super.key});

  @override
  State<HappyScoreBar> createState() => _HappyScoreBarState();
}

class _HappyScoreBarState extends State<HappyScoreBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("ความสุข"),
        Container(
          height: size.height*0.02,
          width: size.width*0.8,
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        )
      ],
    );
  }
}

class HungryScoreBar extends StatefulWidget {
  const HungryScoreBar({super.key});

  @override
  State<HungryScoreBar> createState() => _HungryScoreBarState();
}

class _HungryScoreBarState extends State<HungryScoreBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("ความหิว"),
        Container(
          height: size.height*0.02,
          width: size.width*0.8,
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          ),
        )
      ],
    );
  }
}

class StaminaScoreBar extends StatefulWidget {
  const StaminaScoreBar({super.key});

  @override
  State<StaminaScoreBar> createState() => _StaminaScoreBarState();
}

class _StaminaScoreBarState extends State<StaminaScoreBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("พลังงาน"),
        Container(
          height: size.height*0.02,
          width: size.width*0.8,
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        )
      ],
    );
  }
}