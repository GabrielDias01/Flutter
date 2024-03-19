import 'package:app_carros/Model.dart';

class CarroController {
  List<Carro> _listaCarros = [];

  List<Carro> get listaCarros => _listaCarros;

  void adicionarCarro(String modelo, int ano, String imgagemUrl) {
    Carro carro = Carro(modelo, ano, imgagemUrl);
    _listaCarros.add(carro);
  }
}
