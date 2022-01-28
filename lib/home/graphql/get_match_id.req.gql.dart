// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i6;
import 'package:odl_flutter_client/home/graphql/get_match_id.ast.gql.dart'
    as _i5;
import 'package:odl_flutter_client/home/graphql/get_match_id.data.gql.dart'
    as _i2;
import 'package:odl_flutter_client/home/graphql/get_match_id.var.gql.dart'
    as _i3;

part 'get_match_id.req.gql.g.dart';

abstract class GGetMatchIdReq
    implements
        Built<GGetMatchIdReq, GGetMatchIdReqBuilder>,
        _i1.OperationRequest<_i2.GGetMatchIdData, _i3.GGetMatchIdVars> {
  GGetMatchIdReq._();

  factory GGetMatchIdReq([Function(GGetMatchIdReqBuilder b) updates]) =
      _$GGetMatchIdReq;

  static void _initializeBuilder(GGetMatchIdReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetMatchId')
    ..executeOnListen = true;
  _i3.GGetMatchIdVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetMatchIdData? Function(_i2.GGetMatchIdData?, _i2.GGetMatchIdData?)?
      get updateResult;
  _i2.GGetMatchIdData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetMatchIdData? parseData(Map<String, dynamic> json) =>
      _i2.GGetMatchIdData.fromJson(json);
  static Serializer<GGetMatchIdReq> get serializer =>
      _$gGetMatchIdReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetMatchIdReq.serializer, this)
          as Map<String, dynamic>);
  static GGetMatchIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetMatchIdReq.serializer, json);
}
