import 'package:async_redux/async_redux.dart';

import 'package:async_pokedex/screens/home/home_features/home_screen_view_model.dart';
import 'package:async_pokedex/screens/home/home_screen.dart';
import 'package:async_pokedex/state/app_state.dart';

class HomeScreenFactory extends VmFactory<AppState, HomeScreen>{
  HomeScreenFactory(super.widget);

  @override
  Vm? fromStore(){
    return HomeScreenViewModel(pokemons: state.names);
  }
}