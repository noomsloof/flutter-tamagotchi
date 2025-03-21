import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tamagotchi/models/PetModel.dart';

class PetProvider with ChangeNotifier {
  PetModel pet = PetModel();

  String petActions = 'assets/images/nomal.gif';

  void feedPet() {
    if (pet.eat() == true) {
      animationAction(action: "eat");
      _resetToActionAnimation(2);
      notifyListeners();
    }
  }

  void playWithPet() {
    if (pet.play() == true) {
      animationAction(action: "play");
      _resetToActionAnimation(3);
      notifyListeners();
    }
  }

  void rest() {
    if (pet.rest() == true) {
      animationAction(action: "rest");
      _resetToActionAnimation(3);
      notifyListeners();
    }
  }

  void animationAction({String action = "defult"}) {
    switch (action) {
      case "defult":
        petActions = defultAnimation();
        break;
      case "eat":
        petActions = 'assets/images/eat.gif';
        break;
      case "play":
        petActions = 'assets/images/play.gif';
        break;
      case "rest":
        petActions = 'assets/images/rest.gif';
        break;
    }
  }

  String defultAnimation() {
    if (pet.happiness < 15 || pet.hunger < 15) {
      return 'assets/images/nomal_low.png';
    } else if (pet.happiness < 85 || pet.hunger < 85) {
      return 'assets/images/nomal.gif';
    } else {
      return 'assets/images/nomal_high.gif';
    }
  }

  void _resetToActionAnimation(int t) {
    Timer(Duration(seconds: t), () {
      notifyListeners();
      animationAction();
    });
  }
}
