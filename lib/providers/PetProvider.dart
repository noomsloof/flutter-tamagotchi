import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tamagotchi/main.dart';
import 'package:tamagotchi/models/PetModel.dart';

class PetProvider with ChangeNotifier {
  PetModel pet = PetModel();

  PetProvider() {
    pet = PetModel();
    _loadPetData();
  }

  void feedPet() {
    if (pet.eat() == true) {
      animationAction(action: "eat");
      _resetToActionAnimation(4);
      _savePetdata();
      notifyListeners();
    }
  }

  void playWithPet() {
    if (pet.play() == true) {
      animationAction(action: "play");
      _resetToActionAnimation(4);
      _savePetdata();
      notifyListeners();
    }
  }

  void rest() {
    if (pet.rest() == true) {
      animationAction(action: "rest");
      _resetToActionAnimation(5);
      _savePetdata();
      notifyListeners();
    }
  }

  void animationAction({String action = "defult"}) {
    switch (action) {
      case "defult":
        pet.petActions = defaultAnimation();
        break;
      case "eat":
        pet.petActions = 'assets/images/eat.gif';
        break;
      case "play":
        pet.petActions = 'assets/images/play.gif';
        break;
      case "rest":
        pet.petActions = 'assets/images/rest.gif';
        break;
    }
    _savePetdata();
    notifyListeners();
  }

  String defaultAnimation() {
    if (pet.happiness < 15 && pet.hunger < 15) {
      return 'assets/images/nomal_low.gif';
    } else if (pet.happiness < 85 && pet.hunger < 85) {
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

  Future<void> _loadPetData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    pet.energy = prefs.getInt('energy') ?? 100;
    pet.hunger = prefs.getInt('hunger') ?? 50;
    pet.happiness = prefs.getInt('happiness') ?? 80;
    pet.petActions = prefs.getString('petActions') ?? 'assets/images/nomal.gif';

    notifyListeners();


    if (pet.happiness < 20 || pet.hunger < 20) {
      _showPetNotification();
    }
  }

  Future<void> _showPetNotification() async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'low_channel',
          'Low Notifications',
          channelDescription: 'Notifications for low.',
          importance: Importance.high,
          priority: Priority.high,
        );
    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      'จะตายแล้ว!!.',
      'สัตว์เลี้ยงจะตายแล้ว!!. มาดูเร็ว',
      notificationDetails,
      payload: 'low_payload',
    );
  }

  void _savePetdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('energy', pet.energy);
    prefs.setInt('hunger', pet.hunger);
    prefs.setInt('happiness', pet.happiness);
    prefs.setString('petActions', pet.petActions);
  }
}
