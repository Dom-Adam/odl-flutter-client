// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GCreateUserData.serializer)
      ..add(GCreateUserData_createUser.serializer)
      ..add(GCreateUserInput.serializer)
      ..add(GCreateUserReq.serializer)
      ..add(GCreateUserVars.serializer)
      ..add(GGetMatchIdData.serializer)
      ..add(GGetMatchIdData_getMatchId.serializer)
      ..add(GGetMatchIdData_getMatchId_legs.serializer)
      ..add(GGetMatchIdData_getMatchId_players.serializer)
      ..add(GGetMatchIdReq.serializer)
      ..add(GGetMatchIdVars.serializer)
      ..add(GListenToMatchData.serializer)
      ..add(GListenToMatchData_listenToMatch.serializer)
      ..add(GListenToMatchData_listenToMatch_legs.serializer)
      ..add(GListenToMatchData_listenToMatch_legs_visits.serializer)
      ..add(GListenToMatchReq.serializer)
      ..add(GListenToMatchVars.serializer)
      ..add(GSearchOpponentData.serializer)
      ..add(GSearchOpponentReq.serializer)
      ..add(GSearchOpponentVars.serializer)
      ..add(GUpdateMatchData.serializer)
      ..add(GUpdateMatchData_updateMatch.serializer)
      ..add(GUpdateMatchInput.serializer)
      ..add(GUpdateMatchReq.serializer)
      ..add(GUpdateMatchVars.serializer)
      ..add(GUpdateUserInput.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetMatchIdData_getMatchId_players)]),
          () => new ListBuilder<GGetMatchIdData_getMatchId_players>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetMatchIdData_getMatchId_legs)]),
          () => new ListBuilder<GGetMatchIdData_getMatchId_legs>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GListenToMatchData_listenToMatch_legs)]),
          () => new ListBuilder<GListenToMatchData_listenToMatch_legs>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GListenToMatchData_listenToMatch_legs_visits)
          ]),
          () =>
              new ListBuilder<GListenToMatchData_listenToMatch_legs_visits>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
