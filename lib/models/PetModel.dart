import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tamagotchi/main.dart';

class PetModel extends ChangeNotifier {
  late int energy;
  late int hunger;
  late int happiness;
  late String petActions;

  PetModel({
    this.energy = 100,
    this.hunger = 50,
    this.happiness = 80,
    this.petActions = 'assets/images/nomal.gif',
  }){_loadPetData();}

  Future<void> _loadPetData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    energy = prefs.getInt('energy') ?? 100;
    hunger = prefs.getInt('hunger') ?? 50;
    happiness = prefs.getInt('happiness') ?? 80;
    petActions = prefs.getString('petActions') ?? 'assets/images/nomal.gif';
    notifyListeners();

    if(happiness < 20 || hunger < 20){
      _showPetNotification();
    }
  }

  Future<void> _showPetNotification() async{
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails('low_channel', 'Low Notifications',channelDescription: 'Notifications for low.',importance: Importance.high,priority: Priority.high);
    const NotificationDetails notificationDetails = NotificationDetails(android: androidDetails);
    await flutterLocalNotificationsPlugin.show(0,'Low!','Your pet is low now.',notificationDetails, payload:'low_payload');
  }

  void _savePetdata() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('energy', energy);
    prefs.setInt('hunger', hunger);
    prefs.setInt('happiness', happiness);
    prefs.setString('petActions', petActions);
  }

  void savedata(){
    _savePetdata();
  }

  bool eat() {
    if (energy > 10 && hunger != 100) {
      hunger = (hunger + 20).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
      _savePetdata();
      return true;
    }
    return false;
  }

  bool play() {
    if (energy > 10 && happiness != 100) {
      happiness = (happiness + 15).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
      _savePetdata();
    return true;
    }
    return false;
  }

  bool rest() {
    if (energy != 100) {
      if (happiness > 15 || hunger > 20) {
        happiness = (happiness - 15).clamp(0, 100);
        hunger = (hunger - 20).clamp(0, 100);
        energy = (energy + 30).clamp(0, 100);
        _savePetdata();
        return true;
      }
    return false;
    }
    return false;
  }
}
