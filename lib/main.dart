
class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car('Tesla', 'X', 2021, 15000.0);
  Car car2 = Car('BMW', 'Y', 2019, 22000.0);
  Car car3 = Car('Audi', 'Z', 2020, 18000.0);

  car1.drive(200.0);
  car2.drive(300.0);
  car3.drive(250.0);

  print('Car 1:');
  print('Brand: ${car1.getBrand()}');
  print('Model: ${car1.getModel()}');
  print('Year: ${car1.getYear()}');
  print('Miles Driven: ${car1.getMilesDriven()}');
  print('Age: ${car1.getAge()}');
  print('\n');

  print('Car 2:');
  print('Brand: ${car2.getBrand()}');
  print('Model: ${car2.getModel()}');
  print('Year: ${car2.getYear()}');
  print('Miles Driven: ${car2.getMilesDriven()}');
  print('Age: ${car2.getAge()}');
  print('\n');

  print('Car 3:');
  print('Brand: ${car3.getBrand()}');
  print('Model: ${car3.getModel()}');
  print('Year: ${car3.getYear()}');
  print('Miles Driven: ${car3.getMilesDriven()}');
  print('Age: ${car3.getAge()}');
  print('\n');

  print('Total number of Car objects created: ${Car.numberOfCars}');
}
