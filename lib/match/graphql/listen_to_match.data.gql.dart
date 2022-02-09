// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'listen_to_match.data.gql.g.dart';

abstract class GListenToMatchData
    implements Built<GListenToMatchData, GListenToMatchDataBuilder> {
  GListenToMatchData._();

  factory GListenToMatchData([Function(GListenToMatchDataBuilder b) updates]) =
      _$GListenToMatchData;

  static void _initializeBuilder(GListenToMatchDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GListenToMatchData_listenToMatch get listenToMatch;
  static Serializer<GListenToMatchData> get serializer =>
      _$gListenToMatchDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GListenToMatchData.serializer, this)
          as Map<String, dynamic>);
  static GListenToMatchData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GListenToMatchData.serializer, json);
}

abstract class GListenToMatchData_listenToMatch
    implements
        Built<GListenToMatchData_listenToMatch,
            GListenToMatchData_listenToMatchBuilder> {
  GListenToMatchData_listenToMatch._();

  factory GListenToMatchData_listenToMatch(
          [Function(GListenToMatchData_listenToMatchBuilder b) updates]) =
      _$GListenToMatchData_listenToMatch;

  static void _initializeBuilder(GListenToMatchData_listenToMatchBuilder b) =>
      b..G__typename = 'Match';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GListenToMatchData_listenToMatch_legs> get legs;
  static Serializer<GListenToMatchData_listenToMatch> get serializer =>
      _$gListenToMatchDataListenToMatchSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GListenToMatchData_listenToMatch.serializer, this)
      as Map<String, dynamic>);
  static GListenToMatchData_listenToMatch? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GListenToMatchData_listenToMatch.serializer, json);
}

abstract class GListenToMatchData_listenToMatch_legs
    implements
        Built<GListenToMatchData_listenToMatch_legs,
            GListenToMatchData_listenToMatch_legsBuilder> {
  GListenToMatchData_listenToMatch_legs._();

  factory GListenToMatchData_listenToMatch_legs(
          [Function(GListenToMatchData_listenToMatch_legsBuilder b) updates]) =
      _$GListenToMatchData_listenToMatch_legs;

  static void _initializeBuilder(
          GListenToMatchData_listenToMatch_legsBuilder b) =>
      b..G__typename = 'Leg';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  BuiltList<int> get points;
  bool get isFinished;
  BuiltList<GListenToMatchData_listenToMatch_legs_visits> get visits;
  static Serializer<GListenToMatchData_listenToMatch_legs> get serializer =>
      _$gListenToMatchDataListenToMatchLegsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GListenToMatchData_listenToMatch_legs.serializer, this)
      as Map<String, dynamic>);
  static GListenToMatchData_listenToMatch_legs? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GListenToMatchData_listenToMatch_legs.serializer, json);
}

abstract class GListenToMatchData_listenToMatch_legs_visits
    implements
        Built<GListenToMatchData_listenToMatch_legs_visits,
            GListenToMatchData_listenToMatch_legs_visitsBuilder> {
  GListenToMatchData_listenToMatch_legs_visits._();

  factory GListenToMatchData_listenToMatch_legs_visits(
      [Function(GListenToMatchData_listenToMatch_legs_visitsBuilder b)
          updates]) = _$GListenToMatchData_listenToMatch_legs_visits;

  static void _initializeBuilder(
          GListenToMatchData_listenToMatch_legs_visitsBuilder b) =>
      b..G__typename = 'Visit';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get playerId;
  bool get isFinished;
  static Serializer<GListenToMatchData_listenToMatch_legs_visits>
      get serializer => _$gListenToMatchDataListenToMatchLegsVisitsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GListenToMatchData_listenToMatch_legs_visits.serializer, this)
      as Map<String, dynamic>);
  static GListenToMatchData_listenToMatch_legs_visits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GListenToMatchData_listenToMatch_legs_visits.serializer, json);
}
