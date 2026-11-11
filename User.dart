class User{
  String _id;
  String _nomComplet;
  double _saldo;

  String correu;
  bool esVIP;

  //Constructors

  User.nou({ 
    required String id, 
    required String nom, 
    required String correu}) : _id = id, _nomComplet = nom, _saldo = 0.0, esVip = false;

  User({
    required String id,
    required String nomComplet, 
    required double saldo, 
    required this.correu, this.esVIP = false, }) : _id = id, _nomComplet = nomComplet, _saldo = saldo;

    String get id => _id;
    String get nomComplet => _nomComplet;
    double get saldo => _saldo;
    
     void recarregarSaldo(double quantitat) {
    if (quantitat <= 0) {
      throw ArgumentError('La quantitat a recarregar ha de ser superior a zero.');
    }
    _saldo += quantitat; // Sumem la quantitat al saldo existent
  }
}

