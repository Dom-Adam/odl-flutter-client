// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'update_match.data.gql.g.dart';

abstract class GUpdateMatchData
    implements Built<GUpdateMatchData, GUpdateMatchDataBuilder> {
  GUpdateMatchData._();

  factory GUpdateMatchData([Function(GUpdateMatchDataBuilder b) updates]) =
      _$GUpdateMatchData;

  static void _initializeBuilder(GUpdateMatchDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateMatchData_updateMatch get updateMatch;
  static Serializer<GUpdateMatchData> get serializer =>
      _$gUpdateMatchDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateMatchData.serializer, this)
          as Map<String, dynamic>);
  static GUpdateMatchData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateMatchData.serializer, json);
}

abstract class GUpdateMatchData_updateMatch
    implements
        Built<GUpdateMatchData_updateMatch,
            GUpdateMatchData_updateMatchBuilder> {
  GUpdateMatchData_updateMatch._();

  factory GUpdateMatchData_updateMatch(
          [Function(GUpdateMatchData_updateMatchBuilder b) updates]) =
      _$GUpdateMatchData_updateMatch;

  static void _initializeBuilder(GUpdateMatchData_updateMatchBuilder b) =>
      b..G__typename = 'Match';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GUpdateMatchData_updateMatch> get serializer =>
      _$gUpdateMatchDataUpdateMatchSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GUpdateMatchData_updateMatch.serializer, this) as Map<String, dynamic>);
  static GUpdateMatchData_updateMatch? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUpdateMatchData_updateMatch.serializer, json);
}
