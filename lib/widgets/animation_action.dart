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
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(5, 5),
          ),
        ],
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Transform.scale(
        scale: 0.7,
        child: Image.asset(petProvider.pet.petActions, fit: BoxFit.fitWidth,alignment: Alignment.bottomCenter),
      ),
      width: size.width * 0.8,
    );
  }
}
