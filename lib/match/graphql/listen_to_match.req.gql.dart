// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i6;
import 'package:odl_flutter_client/match/graphql/listen_to_match.ast.gql.dart'
    as _i5;
import 'package:odl_flutter_client/match/graphql/listen_to_match.data.gql.dart'
    as _i2;
import 'package:odl_flutter_client/match/graphql/listen_to_match.var.gql.dart'
    as _i3;

part 'listen_to_match.req.gql.g.dart';

abstract class GListenToMatchReq
    implements
        Built<GListenToMatchReq, GListenToMatchReqBuilder>,
        _i1.OperationRequest<_i2.GListenToMatchData, _i3.GListenToMatchVars> {
  GListenToMatchReq._();

  factory GListenToMatchReq([Function(GListenToMatchReqBuilder b) updates]) =
      _$GListenToMatchReq;

  static void _initializeBuilder(GListenToMatchReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'ListenToMatch')
    ..executeOnListen = true;
  _i3.GListenToMatchVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GListenToMatchData? Function(
      _i2.GListenToMatchData?, _i2.GListenToMatchData?)? get updateResult;
  _i2.GListenToMatchData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GListenToMatchData? parseData(Map<String, dynamic> json) =>
      _i2.GListenToMatchData.fromJson(json);
  static Serializer<GListenToMatchReq> get serializer =>
      _$gListenToMatchReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GListenToMatchReq.serializer, this)
          as Map<String, dynamic>);
  static GListenToMatchReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GListenToMatchReq.serializer, json);
}
