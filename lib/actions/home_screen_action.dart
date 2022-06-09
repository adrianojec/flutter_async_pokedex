import 'dart:async';

import 'package:async_pokedex/apis/pokemons_handler.dart';
import 'package:async_pokedex/state/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

class FetchPokemons extends ReduxAction<AppState>{
  @override
  Future<AppState?> reduce() async {
    try{
      final api = PokemonsHandler();
      await api.fetchPokemons();
      return state.copyWith(names: api.pokemons);
    } on Exception catch(e){
      debugPrint('$e');
    }
    return state;
  }
}