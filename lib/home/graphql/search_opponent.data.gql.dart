// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'search_opponent.data.gql.g.dart';

abstract class GSearchOpponentData
    implements Built<GSearchOpponentData, GSearchOpponentDataBuilder> {
  GSearchOpponentData._();

  factory GSearchOpponentData(
      [Function(GSearchOpponentDataBuilder b) updates]) = _$GSearchOpponentData;

  static void _initializeBuilder(GSearchOpponentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get searchOpponent;
  static Serializer<GSearchOpponentData> get serializer =>
      _$gSearchOpponentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSearchOpponentData.serializer, this)
          as Map<String, dynamic>);
  static GSearchOpponentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSearchOpponentData.serializer, json);
}
