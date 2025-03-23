import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PetModel extends ChangeNotifier {
  late int energy;
  late int hunger;
  late int happiness;

  PetModel({
    this.energy = 100,
    this.hunger = 50,
    this.happiness = 80,
  }){_loadPetData();}

  Future<void> _loadPetData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    energy = prefs.getInt('energy') ?? 100;
    hunger = prefs.getInt('hunger') ?? 50;
    happiness = prefs.getInt('happiness') ?? 80;
    notifyListeners(); // ✅ อัปเดต UI หลังจากโหลดเสร็จ
  }

    void _savePetdata() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('energy', energy);
    prefs.setInt('hunger', hunger);
    prefs.setInt('happiness', happiness);
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
