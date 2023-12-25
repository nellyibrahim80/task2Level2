class Car {
  final String brand;
  final String color;
  final String model;
  int? Doors;

  Car({required this.brand,required this.color,required this.model, this.Doors});

  void start() {
    print("********************");
    print("The $brand ($model) Car with $color ");
    print('Engine started');
  }
  void Break() {
    print("********************");
    print("The $brand ($model) Car with $color ");
    print('Car Stopped');
  }
}
class Bmw extends Car{
  int _Doors=4;
  Bmw( {int Doors=4,required super.brand, required super.color, required super.model}) :_Doors=Doors;
  int get Doors=> _Doors;


//set Doors(int Value){_Doors=Value;}
  void printDoors(){
    print("Number of BMW Doors is : $Doors");
  }
}