// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/schema.schema.gql.dart' as _i1;
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i2;

part 'update_match.var.gql.g.dart';

abstract class GUpdateMatchVars
    implements Built<GUpdateMatchVars, GUpdateMatchVarsBuilder> {
  GUpdateMatchVars._();

  factory GUpdateMatchVars([Function(GUpdateMatchVarsBuilder b) updates]) =
      _$GUpdateMatchVars;

  _i1.GUpdateMatchInput get score;
  static Serializer<GUpdateMatchVars> get serializer =>
      _$gUpdateMatchVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateMatchVars.serializer, this)
          as Map<String, dynamic>);
  static GUpdateMatchVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateMatchVars.serializer, json);
}
