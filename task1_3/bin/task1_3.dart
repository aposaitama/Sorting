import 'dart:io';

class ParkingSystem {
  final Set carPlateNumbers = {};

  void showCarPlates() {
    print(carPlateNumbers);
  }

  void addCarPlate(String carPlate) {
    carPlateNumbers.add(carPlate);
  }

  void start() {
    print("Enter new car plates number or such a command: 'СПИСОК' / 'СТОП':");
    while (true) {
      String? input = stdin.readLineSync()?.trim().toUpperCase();
      if (input == "СПИСОК") {
        showCarPlates();
      } else if (input == "СТОП") {
        print("exit program");
        break;
      } else if (input != null && input.isNotEmpty) {
        addCarPlate(input);
      } else {
        print("incorrect input");
      }
    }
  }
}

void main() {
  final parkingSystem = ParkingSystem();
  parkingSystem.start();
}
