import 'User.dart';
import 'Patinet.dart';
import 'Cotxe.dart';
import 'Gestor.dart';


void main(){
  var gestor = Gestor();


  //inicialització

  //1. Iniciar un usuari

  User user1 = User(
  id: 'USR-01', 
  nomComplet: "Jackie Taylor", 
  saldo: 40.0, 
  correu: 'jackietaylor9@gmail.com', 
  esVIP: true);

  //2. Crear llista 3pat i 2cot

  Patinet patinetA = Patinet(
    id: 'PAT-01A',
    bateriaPercentatge: 69,
    preuPerMinut: 0.15,
    velocitatMax: 25,
  );

  patinetA.actualitzarUbicacio(35.78, 4.34);


  Patinet patinetB = Patinet(
    id: 'PAT-02B',
    bateriaPercentatge: 85,
    preuPerMinut: 0.13,
    velocitatMax: 20,
  );

  patinetB.actualitzarUbicacio(36.50, 2.21);
  
  Patinet patinetC = Patinet(
    id: 'PAT-03C',
    bateriaPercentatge: 99,
    preuPerMinut: 0.16,
    velocitatMax: 30
  );

  patinetC.actualitzarUbicacio(32.89, 3.40);

  Cotxe cotxeA = Cotxe(
    id: 'COT-01A',
    bateriaPercentatge: 95,
    preuPerMinut: 0.30,
    enUs: true,
    places: 5,
    requereixLlicencia: true,
  );

  Cotxe cotxeB = Cotxe(
    id: 'COT-02B',
    bateriaPercentatge: 89,
    preuPerMinut: 0.23,
    enUs: false,
    places: 4,
    requereixLlicencia:true,
    );

    // afegir vehicles a llista

    gestor.afegirVehicle(patinetA);
    gestor.afegirVehicle(patinetB);
    gestor.afegirVehicle(patinetC);
    gestor.afegirVehicle(cotxeA);
    gestor.afegirVehicle(cotxeB);

    //simulació d'ús

    User usuari1 = User(
      id: "USR-01",
      nomComplet: 'Jackie Taylor',
      saldo: 120.00,
      correu: 'jackieTaylor9@gmail.com',
      esVIP: true,
    );

    int minutsReserva = 30;
    double costTotal = patinetA.calcularCostReservat(minutsReserva, usuari: usuari1);
    patinetA.actualitzarUbicacio(23.4,3.4);
    var(latitud,longitud) = patinetA.obtenirCoordenades();


    print("Usuari: ${usuari1.nomComplet}");
    print("Vehicle: Patinet amb codi ${patinetA.id}");
    print("Temps llogat: $minutsReserva minuts");
    print("Cost total: ${costTotal.toStringAsFixed(2)}");
    print("Coordinades actuals: Latitud $latitud, || Longitud: $longitud");

    //gestió error
    try{
  user1.recarregarSaldo(-10.0);
} on ArgumentError catch (e){
  print('Paràmetes no vàlid.');
}

}