class PetModel {
  late int energy;
  late int hunger;
  late int happiness;
  late String petActions;

  PetModel({
    this.energy = 100,
    this.hunger = 50,
    this.happiness = 80,
    this.petActions = 'assets/images/nomal.gif',
  });

  bool eat() {
    if (energy > 10 && hunger != 100) {
      hunger = (hunger + 20).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
      return true;
    }
    return false;
  }


  bool play() {
    if (energy > 10 && happiness != 100) {
      happiness = (happiness + 15).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
      return true;
    }
    return false;
  }

  bool rest() {
    if (energy != 100) {
      if (happiness > 15 || hunger > 20) {
        happiness = (happiness - 15).clamp(0, 100);
        hunger = (hunger - 20).clamp(0, 100);
        energy = (energy + 20).clamp(0, 100);
        return true;
      }
      return false;
    }
    return false;
  }
}
