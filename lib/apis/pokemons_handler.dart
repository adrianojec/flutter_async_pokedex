import 'package:async_pokedex/models/pokemon/pokemon.dart';
import 'package:dio/dio.dart';

class PokemonsHandler {
  final Dio dio = Dio();
  final _url = 'https://pokeapi.co/api/v2/pokemon?limit=1126';
  final _pokemons = List<Pokemon>.empty(growable: true);
  final _abilities = List<String>.empty(growable: true);

  List<Pokemon> get pokemons => _pokemons;

  List<String> get abilities => _abilities;

  Future<void> fetchPokemons() async {
    try {
      final response = await dio.get(_url);
      if (response.statusCode == 200) {
        final json = response.data['results'];
        for (var pokemon in json) {
          _pokemons.add(Pokemon(
            name: pokemon['name'],
            abilityUrl: pokemon['url'],
          ));
        }
      }
    } on Exception catch (_) {}
  }
}
