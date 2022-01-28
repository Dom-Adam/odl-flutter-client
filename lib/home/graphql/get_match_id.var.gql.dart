// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'get_match_id.var.gql.g.dart';

abstract class GGetMatchIdVars
    implements Built<GGetMatchIdVars, GGetMatchIdVarsBuilder> {
  GGetMatchIdVars._();

  factory GGetMatchIdVars([Function(GGetMatchIdVarsBuilder b) updates]) =
      _$GGetMatchIdVars;

  String get userId;
  static Serializer<GGetMatchIdVars> get serializer =>
      _$gGetMatchIdVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMatchIdVars.serializer, this)
          as Map<String, dynamic>);
  static GGetMatchIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMatchIdVars.serializer, json);
}
