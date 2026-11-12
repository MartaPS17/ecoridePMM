import 'dart:math';

import 'User.dart';
import 'GpsLocation.dart';

abstract class Vehicle with GpsLocation{
  final String id;
  final int bateriaPercentatge;
  bool enUs;
  final double preuPerMinut;

  Vehicle({
   required this.id, 
    required this.bateriaPercentatge, 
    required this.preuPerMinut, 
    this.enUs = false, 
    });

    String estatBateria(){
      return switch (bateriaPercentatge){
        >= 80 => "Alta",
        >= 20 => "Mitjana",
        _=> "Crítica (Requereix càrrega)",
      };
    }
  //metode abstracte calcular cost reserva
    double calcularCostReservat(int minuts, {User? usuari});

}
