import 'package:async_pokedex/actions/home_screen_action.dart';
import 'package:async_pokedex/screens/home/home_features/home_screen_factory.dart';
import 'package:async_pokedex/screens/home/home_features/home_screen_view_model.dart';
import 'package:async_pokedex/state/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeScreenViewModel>(
      vm: () => HomeScreenFactory(this),
      onInit: (store) async => store.dispatch(FetchPokemons()),
      builder: (context, vm) => Scaffold(
        body: ListView.builder(
          itemCount: vm.pokemons.length,
          itemBuilder: (context, index) => ExpansionTile(
            title: Text(vm.pokemons[index].name),
            children: [
              Text(vm.pokemons[index].abilityUrl)
            ],
          ),
        ),
      ),
    );
  }
}
