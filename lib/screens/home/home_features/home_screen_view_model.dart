import 'package:async_pokedex/models/pokemon/pokemon.dart';
import 'package:async_redux/async_redux.dart';

class HomeScreenViewModel extends Vm {
  HomeScreenViewModel({required this.pokemons}) : super(equals: [pokemons]);

  final List<Pokemon> pokemons;
}
