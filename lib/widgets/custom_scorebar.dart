import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamagotchi/providers/PetProvider.dart';

class HappyScoreBar extends StatefulWidget {
  const HappyScoreBar({super.key});

  @override
  State<HappyScoreBar> createState() => _HappyScoreBarState();
}

class _HappyScoreBarState extends State<HappyScoreBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final petProvider = Provider.of<PetProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("ความสุข"),
        Container(
          height: size.height*0.02,
          width: size.width*0.8,
          child: LinearProgressIndicator(
            value: (petProvider.pet.happiness)/100,
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
    final petProvider = Provider.of<PetProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("ความอิ่ม"),
        Container(
          height: size.height*0.02,
          width: size.width*0.8,
          child: LinearProgressIndicator(
            value: (petProvider.pet.hunger)/100,
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
    final petProvider = Provider.of<PetProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("พลังงาน"),
        Container(
          height: size.height*0.02,
          width: size.width*0.8,
          child: LinearProgressIndicator(
            value: (petProvider.pet.energy)/100,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        )
      ],
    );
  }
}