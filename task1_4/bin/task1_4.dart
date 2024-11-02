import 'dart:io';

class ParkingSystem {
  final Map<String, dynamic> carPlateNumbers = {};

  void showCarPlatesOwner(String owner) {
    final owners = carPlateNumbers.values.toSet();
    print(owners);
  }

  void showCarPlatesCars() {
    print(carPlateNumbers);
  }

  void addCarPlate(String carPlate, String carOwner) {
    carPlateNumbers[carPlate] = carOwner;
  }

  void start() {
    print("Enter new car plates number or such a command: 'СПИСОК' / 'СТОП':");
    while (true) {
      String? input = stdin.readLineSync()?.trim().toUpperCase();
      if (input == "СПИСОК") {
        showCarPlatesCars();
      }
      if (input == "ВЛАДЕЛЕЦ") {
        String? owner = stdin.readLineSync()?.trim().toUpperCase();
        if (owner != null && owner.isNotEmpty) {
          showCarPlatesOwner(owner);
        } else
          print('incorrect input');
      } else if (input == "СТОП") {
        print("exit program");
        break;
      } else if (input != null && input.isNotEmpty) {
        String? owner = stdin.readLineSync()?.trim().toUpperCase();
        if (owner != null && owner.isNotEmpty) {
          addCarPlate(input, owner);
        }
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
