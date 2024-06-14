//Assignment1

class Car {
  String brand;
  String model;
  int year;
  double _milesDriven;
  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this._milesDriven) {
    Car.numberOfCars++;
  }

  drive(double miles) {
    _milesDriven += miles;
  }

  double get getMilesDriven {
    return _milesDriven;
  }

  String get getBrand {
    return brand;
  }

  String get getModel {
    return model;
  }

  int get getYear {
    return year;
  }

  int get getAge {
    int age = 2024 - year;
    return age;
  }
}

void main() {
  Car carOne = Car('Porsche', '911', 2013, 48000);
  Car carTwo = Car('Toyota', 'Supra MK5', 2019, 55000);
  Car carThree = Car('BMW', 'i8', 2016, 47000);

  carOne.drive(1000);
  carOne.drive(800);
  carOne.drive(670);

  print(
      "Car One: ${carOne.getBrand},Model: ${carOne.getModel},Year: ${carOne.getYear},Miles Driven: ${carOne.getMilesDriven},Age: ${carOne.getAge}");
  print(
      "Car Two: ${carTwo.getBrand},Model: ${carTwo.getModel},Year: ${carTwo.getYear},Miles Driven: ${carTwo.getMilesDriven},Age: ${carTwo.getAge}");
  print(
      "Car Three: ${carThree.getBrand},Model: ${carThree.getModel},Year: ${carThree.getYear},Miles Driven: ${carThree.getMilesDriven},Age: ${carThree.getAge}");

  print('Total number of cars created: ${Car.numberOfCars}');
}
