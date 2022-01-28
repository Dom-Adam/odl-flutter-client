// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i6;
import 'package:odl_flutter_client/home/graphql/search_opponent.ast.gql.dart'
    as _i5;
import 'package:odl_flutter_client/home/graphql/search_opponent.data.gql.dart'
    as _i2;
import 'package:odl_flutter_client/home/graphql/search_opponent.var.gql.dart'
    as _i3;

part 'search_opponent.req.gql.g.dart';

abstract class GSearchOpponentReq
    implements
        Built<GSearchOpponentReq, GSearchOpponentReqBuilder>,
        _i1.OperationRequest<_i2.GSearchOpponentData, _i3.GSearchOpponentVars> {
  GSearchOpponentReq._();

  factory GSearchOpponentReq([Function(GSearchOpponentReqBuilder b) updates]) =
      _$GSearchOpponentReq;

  static void _initializeBuilder(GSearchOpponentReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'SearchOpponent')
    ..executeOnListen = true;
  _i3.GSearchOpponentVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GSearchOpponentData? Function(
      _i2.GSearchOpponentData?, _i2.GSearchOpponentData?)? get updateResult;
  _i2.GSearchOpponentData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GSearchOpponentData? parseData(Map<String, dynamic> json) =>
      _i2.GSearchOpponentData.fromJson(json);
  static Serializer<GSearchOpponentReq> get serializer =>
      _$gSearchOpponentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GSearchOpponentReq.serializer, this)
          as Map<String, dynamic>);
  static GSearchOpponentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GSearchOpponentReq.serializer, json);
}
