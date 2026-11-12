import 'Vehicle.dart';






class Gestor{
  List<Vehicle> _flota = [];

void afegirVehicle(Vehicle v) => _flota.add(v);

Vehicle get vehicleMesBateria {
  return _flota.reduce((a,b) => a.bateriaPercentatge > b.bateriaPercentatge ? a : b);
}

List<Vehicle> sublistaDispoBateria() {
  return _flota.where((v) => v.bateriaPercentatge > 20 && !v.enUs).toList();
  
}



}
