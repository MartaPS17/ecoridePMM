import 'User.dart';
import 'Vehicle.dart';

class Cotxe extends Vehicle {
  final int places;
  final bool requereixLlicencia;
  final double suplementsFiltreEcologic = 2.00;

  Cotxe ({
    required super.id,
    required super.bateriaPercentatge,
    required super.preuPerMinut,
    super.enUs = false,
    required this.places,
    required this.requereixLlicencia
  });

  double calcularCostReservat(int minuts, {User? usuari}){
    double costBase = ( minuts * preuPerMinut) + suplementsFiltreEcologic;
    return costBase;
  }

}