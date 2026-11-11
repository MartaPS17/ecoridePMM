impor '../models/User.dart';

mixin GpsLocation {
  double latitud = 0.0;
  double longitud = 0.0;
  var posicio = ();

  void actualitzarUbicacio(double lat, double long){
    longitud = long;
    latitud = lat;
  }

  //Metode tornar Record
  (double lat, double long) obtenirCoordenades(){
    return(latitud, longitud);

  }
}
