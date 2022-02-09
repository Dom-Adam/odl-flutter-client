// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'get_match_id.data.gql.g.dart';

abstract class GGetMatchIdData
    implements Built<GGetMatchIdData, GGetMatchIdDataBuilder> {
  GGetMatchIdData._();

  factory GGetMatchIdData([Function(GGetMatchIdDataBuilder b) updates]) =
      _$GGetMatchIdData;

  static void _initializeBuilder(GGetMatchIdDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetMatchIdData_getMatchId get getMatchId;
  static Serializer<GGetMatchIdData> get serializer =>
      _$gGetMatchIdDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMatchIdData.serializer, this)
          as Map<String, dynamic>);
  static GGetMatchIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMatchIdData.serializer, json);
}

abstract class GGetMatchIdData_getMatchId
    implements
        Built<GGetMatchIdData_getMatchId, GGetMatchIdData_getMatchIdBuilder> {
  GGetMatchIdData_getMatchId._();

  factory GGetMatchIdData_getMatchId(
          [Function(GGetMatchIdData_getMatchIdBuilder b) updates]) =
      _$GGetMatchIdData_getMatchId;

  static void _initializeBuilder(GGetMatchIdData_getMatchIdBuilder b) =>
      b..G__typename = 'Match';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  BuiltList<GGetMatchIdData_getMatchId_players> get players;
  BuiltList<GGetMatchIdData_getMatchId_legs> get legs;
  static Serializer<GGetMatchIdData_getMatchId> get serializer =>
      _$gGetMatchIdDataGetMatchIdSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetMatchIdData_getMatchId.serializer, this) as Map<String, dynamic>);
  static GGetMatchIdData_getMatchId? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetMatchIdData_getMatchId.serializer, json);
}

abstract class GGetMatchIdData_getMatchId_players
    implements
        Built<GGetMatchIdData_getMatchId_players,
            GGetMatchIdData_getMatchId_playersBuilder> {
  GGetMatchIdData_getMatchId_players._();

  factory GGetMatchIdData_getMatchId_players(
          [Function(GGetMatchIdData_getMatchId_playersBuilder b) updates]) =
      _$GGetMatchIdData_getMatchId_players;

  static void _initializeBuilder(GGetMatchIdData_getMatchId_playersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get username;
  String get id;
  static Serializer<GGetMatchIdData_getMatchId_players> get serializer =>
      _$gGetMatchIdDataGetMatchIdPlayersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetMatchIdData_getMatchId_players.serializer, this)
      as Map<String, dynamic>);
  static GGetMatchIdData_getMatchId_players? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetMatchIdData_getMatchId_players.serializer, json);
}

abstract class GGetMatchIdData_getMatchId_legs
    implements
        Built<GGetMatchIdData_getMatchId_legs,
            GGetMatchIdData_getMatchId_legsBuilder> {
  GGetMatchIdData_getMatchId_legs._();

  factory GGetMatchIdData_getMatchId_legs(
          [Function(GGetMatchIdData_getMatchId_legsBuilder b) updates]) =
      _$GGetMatchIdData_getMatchId_legs;

  static void _initializeBuilder(GGetMatchIdData_getMatchId_legsBuilder b) =>
      b..G__typename = 'Leg';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetMatchIdData_getMatchId_legs> get serializer =>
      _$gGetMatchIdDataGetMatchIdLegsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetMatchIdData_getMatchId_legs.serializer, this)
      as Map<String, dynamic>);
  static GGetMatchIdData_getMatchId_legs? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetMatchIdData_getMatchId_legs.serializer, json);
}
