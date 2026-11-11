import 'Vehicle.dart';


class Patinet extends Vehicle {
  final int velocitatMax;

  Patinet({
    required super.id,
    required super.bateriaPercentatge,
    required super.preuPerMinut,
    required this.velocitatMax,
    super.enUs = false,
  });

  //sobreescirure metode

  @override
  double calcularCostReservat(int minuts, {User? usuari}){
    double costBase = minuts * preuPerMinut;

    if (usuari != null && usuari.esVIP){
      costBase *= 0.90;
    }
    return costBase;
  }
}