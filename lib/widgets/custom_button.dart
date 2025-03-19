import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamagotchi/providers/PetProvider.dart';

class FeedButton extends StatefulWidget {
  const FeedButton({super.key});

  @override
  State<FeedButton> createState() => _FeedButtonState();
}

class _FeedButtonState extends State<FeedButton> {
  @override
  Widget build(BuildContext context) {
    final petProvider = Provider.of<PetProvider>(context);
    return Expanded(
      flex: 3,
      child: Container(
        child: FloatingActionButton(onPressed: () => petProvider.feedPet(), child: Text("ให้อาหาร")),
      ),
    );
  }
}

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    final petProvider = Provider.of<PetProvider>(context);
    return Expanded(
      flex: 3,
      child: Container(
        child: FloatingActionButton(onPressed: () => petProvider.playWithPet(), child: Text("เล่น")),
      ),
    );
  }
}

class RestButton extends StatefulWidget {
  const RestButton({super.key});

  @override
  State<RestButton> createState() => _RestButtonState();
}

class _RestButtonState extends State<RestButton> {
  @override
  Widget build(BuildContext context) {
    final petProvider = Provider.of<PetProvider>(context);
    return Expanded(
      flex: 3,
      child: Container(
        child: FloatingActionButton(onPressed: () => petProvider.rest(), child: Text("พักผ่อน")),
      ),
    );
  }
}
