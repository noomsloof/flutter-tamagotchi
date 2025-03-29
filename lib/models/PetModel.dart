class PetModel {
  late int energy;
  late int hunger;
  late int happiness;
  late String petActions;

  PetModel({
    this.energy = 100,
    this.hunger = 50,
    this.happiness = 80,
    this.petActions = 'assets/images/normal.gif',
  });

  bool eat() {
    if (energy > 16 && hunger != 100) {
      hunger = (hunger + 25).clamp(0, 100);
      energy = (energy - 16).clamp(0, 100);
      return true;
    }
    return false;
  }

  bool eatdonut() {
    if (energy > 16 && hunger != 100) {
      hunger = (hunger + 15).clamp(0, 100);
      energy = (energy + 10).clamp(0, 100);
      return true;
    }
    return false;
  }


  bool play() {
    if (energy > 16 && happiness != 100) {
      happiness = (happiness + 25).clamp(0, 100);
      energy = (energy - 16).clamp(0, 100);
      return true;
    }
    return false;
  }

  bool rest() {
    if (energy != 100) {
      if (happiness > 20 || hunger > 20) {
        happiness = (happiness - 15).clamp(0, 100);
        hunger = (hunger - 15).clamp(0, 100);
        energy = (energy + 30).clamp(0, 100);
        return true;
      }
      return false;
    }
    return false;
  }
}
