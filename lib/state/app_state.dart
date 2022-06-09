import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:async_pokedex/models/pokemon/pokemon.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(<Pokemon>[]) List<Pokemon> names,
  }) = _AppState;

  factory AppState.initialState() => AppState(names: []);

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
