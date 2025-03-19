class PetModel {
  late int energy;
  late int hunger;
  late int happiness;

  PetModel({this.energy = 100, this.hunger = 50, this.happiness = 80});

  void eat() {
    if (energy > 10) {
      hunger = (hunger + 20).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
    }
  }

  void play() {
    if (energy > 10) {
      happiness = (happiness + 15).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
    }
  }

  void rest() {
    if (happiness > 15 || hunger > 20) {
      happiness = (happiness - 15).clamp(0, 100);
      hunger = (hunger - 20).clamp(0, 100);
      energy = (energy + 30).clamp(0, 100);
    }
  }
}
