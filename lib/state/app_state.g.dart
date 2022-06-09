// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      names: (json['names'] as List<dynamic>?)
              ?.map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Pokemon>[],
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'names': instance.names,
    };
