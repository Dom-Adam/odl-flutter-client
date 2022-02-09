// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i6;
import 'package:odl_flutter_client/match/graphql/update_match.ast.gql.dart'
    as _i5;
import 'package:odl_flutter_client/match/graphql/update_match.data.gql.dart'
    as _i2;
import 'package:odl_flutter_client/match/graphql/update_match.var.gql.dart'
    as _i3;

part 'update_match.req.gql.g.dart';

abstract class GUpdateMatchReq
    implements
        Built<GUpdateMatchReq, GUpdateMatchReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateMatchData, _i3.GUpdateMatchVars> {
  GUpdateMatchReq._();

  factory GUpdateMatchReq([Function(GUpdateMatchReqBuilder b) updates]) =
      _$GUpdateMatchReq;

  static void _initializeBuilder(GUpdateMatchReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UpdateMatch')
    ..executeOnListen = true;
  _i3.GUpdateMatchVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GUpdateMatchData? Function(_i2.GUpdateMatchData?, _i2.GUpdateMatchData?)?
      get updateResult;
  _i2.GUpdateMatchData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GUpdateMatchData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateMatchData.fromJson(json);
  static Serializer<GUpdateMatchReq> get serializer =>
      _$gUpdateMatchReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUpdateMatchReq.serializer, this)
          as Map<String, dynamic>);
  static GUpdateMatchReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUpdateMatchReq.serializer, json);
}
