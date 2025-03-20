import 'package:flutter/material.dart';
import 'package:tamagotchi/models/PetModel.dart';

class PetProvider with ChangeNotifier{
  PetModel pet = PetModel();

  void feedPet(){
    pet.eat();
    notifyListeners();
  }

  void playWithPet(){
    pet.play();
    notifyListeners();
  }

  void rest(){
    pet.rest();
    notifyListeners();
  }

  void animationAction(){
    pet.actionAnimation();
    notifyListeners();
  }
}