import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tamagotchi/models/PetModel.dart';

class PetProvider with ChangeNotifier {
  PetModel pet = PetModel();

  void feedPet() {
    pet.eat();
    animationAction(action: "eat");
    notifyListeners();
    _resetToActionAnimation();
    notifyListeners();
  }

  void playWithPet() {
    pet.play();
    animationAction(action: "play");
    notifyListeners();
    _resetToActionAnimation();
    notifyListeners();
  }

  void rest() {
    pet.rest();
    notifyListeners();
  }

  String animationAction({String action = "defult"}) {
    late String _action;
    switch (action) {
      case "defult":
        _action = pet.defultAnimation();
        print(_action);
        break;
      case "eat":
        _action = 'assets/images/eat.gif';
        print(_action);
        break;
      case "play":
        _action = 'assets/images/play.gif';
        print(_action);
        break;
    }

    return _action;
  }

  void _resetToActionAnimation() {
    Timer(Duration(seconds: 2), () {
      notifyListeners();
    });
  }
}
