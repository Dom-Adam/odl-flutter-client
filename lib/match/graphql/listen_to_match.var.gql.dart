// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'listen_to_match.var.gql.g.dart';

abstract class GListenToMatchVars
    implements Built<GListenToMatchVars, GListenToMatchVarsBuilder> {
  GListenToMatchVars._();

  factory GListenToMatchVars([Function(GListenToMatchVarsBuilder b) updates]) =
      _$GListenToMatchVars;

  String get matchId;
  static Serializer<GListenToMatchVars> get serializer =>
      _$gListenToMatchVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GListenToMatchVars.serializer, this)
          as Map<String, dynamic>);
  static GListenToMatchVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GListenToMatchVars.serializer, json);
}
