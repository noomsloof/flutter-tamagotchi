class PetModel {
  late int energy;
  late int hunger;
  late int happiness;
  late String petAction;

  PetModel({this.energy = 100, this.hunger = 50, this.happiness = 80, this.petAction = "assets/images/nomal.gif"});

  void eat() {
    if (energy > 10 && hunger != 100) {
      hunger = (hunger + 20).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
      petAction = 'assets/images/eat.gif';
    }
  }

  void play() {
    if (energy > 10 && happiness != 100) {
      happiness = (happiness + 15).clamp(0, 100);
      energy = (energy - 10).clamp(0, 100);
      petAction = 'assets/images/play.gif';
    }
  }

  void rest() {
    if (energy != 100) {
      if (happiness > 15 || hunger > 20) {
        happiness = (happiness - 15).clamp(0, 100);
        hunger = (hunger - 20).clamp(0, 100);
        energy = (energy + 30).clamp(0, 100);
      }
    }
  }

  void actionAnimation(){
    if (happiness < 15 || hunger < 15) {
      petAction = 'assets/images/nomal_low.png';
    } else if (happiness < 85 || hunger < 85) {
      petAction = 'assets/images/nomal.gif';
    }else{
      petAction = 'assets/images/nomal_high.gif';
    }
  }
}
