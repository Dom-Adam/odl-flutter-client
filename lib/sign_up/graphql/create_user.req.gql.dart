// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i6;
import 'package:odl_flutter_client/sign_up/graphql/create_user.ast.gql.dart'
    as _i5;
import 'package:odl_flutter_client/sign_up/graphql/create_user.data.gql.dart'
    as _i2;
import 'package:odl_flutter_client/sign_up/graphql/create_user.var.gql.dart'
    as _i3;

part 'create_user.req.gql.g.dart';

abstract class GCreateUserReq
    implements
        Built<GCreateUserReq, GCreateUserReqBuilder>,
        _i1.OperationRequest<_i2.GCreateUserData, _i3.GCreateUserVars> {
  GCreateUserReq._();

  factory GCreateUserReq([Function(GCreateUserReqBuilder b) updates]) =
      _$GCreateUserReq;

  static void _initializeBuilder(GCreateUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateUser')
    ..executeOnListen = true;
  _i3.GCreateUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateUserData? Function(_i2.GCreateUserData?, _i2.GCreateUserData?)?
      get updateResult;
  _i2.GCreateUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateUserData.fromJson(json);
  static Serializer<GCreateUserReq> get serializer =>
      _$gCreateUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateUserReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateUserReq.serializer, json);
}
