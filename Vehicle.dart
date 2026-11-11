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

    double calcularCostReservat(int minuts, {User? usuari});


    

    }


    
  




