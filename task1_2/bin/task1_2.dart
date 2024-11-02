import 'dart:io';

class ParkingSystem {
  final carPlateNumbers = [];

  void showCarPlates() {
    print(carPlateNumbers);
  }

  void addCarPlate(String carPlate, int? carPlateIndex) {
    if (carPlateIndex != null && carPlateIndex >= 0) {
      if (carPlateIndex <= carPlateNumbers.length) {
        carPlateNumbers.insert(carPlateIndex, carPlate);
      }
      if (carPlateIndex > carPlateNumbers.length) {
        carPlateNumbers.add(carPlate);
      }
    } else
      print('carPlateIndex error. Try again');
  }

  void start() {
    print("Enter new car plates number or such a command: 'СПИСОК' / 'СТОП':");
    while (true) {
      String? input = stdin.readLineSync()?.toUpperCase();
      if (input == "СПИСОК") {
        showCarPlates();
      } else if (input == "СТОП") {
        print("exit program");
        break;
      } else if (input != null && input.isNotEmpty) {
        int? catPlateIndex = int.tryParse(stdin.readLineSync() ?? '');

        addCarPlate(input, catPlateIndex);
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
