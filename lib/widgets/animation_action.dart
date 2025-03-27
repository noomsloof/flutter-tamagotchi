import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamagotchi/providers/PetProvider.dart';

class AnimationAction extends StatefulWidget {
  const AnimationAction({super.key});

  @override
  State<AnimationAction> createState() => _AnimationActionState();
}

class _AnimationActionState extends State<AnimationAction> {
  @override
  Widget build(BuildContext context) {
    final petProvider = Provider.of<PetProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/background.png"),
        fit: BoxFit.cover,
      ),
    ),
      child: Image.asset(petProvider.pet.petActions, fit: BoxFit.fitWidth),
      width: size.width,
    );
  }
}
