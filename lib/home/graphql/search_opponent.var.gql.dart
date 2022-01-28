// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'search_opponent.var.gql.g.dart';

abstract class GSearchOpponentVars
    implements Built<GSearchOpponentVars, GSearchOpponentVarsBuilder> {
  GSearchOpponentVars._();

  factory GSearchOpponentVars(
      [Function(GSearchOpponentVarsBuilder b) updates]) = _$GSearchOpponentVars;

  static Serializer<GSearchOpponentVars> get serializer =>
      _$gSearchOpponentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSearchOpponentVars.serializer, this)
          as Map<String, dynamic>);
  static GSearchOpponentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSearchOpponentVars.serializer, json);
}
