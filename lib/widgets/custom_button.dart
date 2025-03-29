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
    return InkWell(
      onTap: () => petProvider.feedPet(),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.pink[100],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/rice.png'),
        ),
      ),
    );
  }
}

class FeedDonutButton extends StatefulWidget {
  const FeedDonutButton({super.key});

  @override
  State<FeedDonutButton> createState() => _FeedDonutButtonState();
}

class _FeedDonutButtonState extends State<FeedDonutButton> {
  @override
    Widget build(BuildContext context) {
    final petProvider = Provider.of<PetProvider>(context);
    return InkWell(
      onTap: () => petProvider.feedDonutPet(),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.pink[100],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/donut.png'),
        ),
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
    return InkWell(
      onTap: () => petProvider.playWithPet(),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.pink[100],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/doll.png'),
        ),
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
    return InkWell(
      onTap: () => petProvider.rest(),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.pink[100],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/sleepy.png'),
        ),
      ),
    );
  }
}
