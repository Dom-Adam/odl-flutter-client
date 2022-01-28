import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:odl_flutter_client/graphql/schema.schema.gql.dart'
    show GCreateUserInput, GUpdateMatchInput, GUpdateUserInput;
import 'package:odl_flutter_client/home/graphql/get_match_id.data.gql.dart'
    show
        GGetMatchIdData,
        GGetMatchIdData_getMatchId,
        GGetMatchIdData_getMatchId_legs;
import 'package:odl_flutter_client/home/graphql/get_match_id.req.gql.dart'
    show GGetMatchIdReq;
import 'package:odl_flutter_client/home/graphql/get_match_id.var.gql.dart'
    show GGetMatchIdVars;
import 'package:odl_flutter_client/home/graphql/search_opponent.data.gql.dart'
    show GSearchOpponentData;
import 'package:odl_flutter_client/home/graphql/search_opponent.req.gql.dart'
    show GSearchOpponentReq;
import 'package:odl_flutter_client/home/graphql/search_opponent.var.gql.dart'
    show GSearchOpponentVars;
import 'package:odl_flutter_client/sign_up/graphql/create_user.data.gql.dart'
    show GCreateUserData, GCreateUserData_createUser;
import 'package:odl_flutter_client/sign_up/graphql/create_user.req.gql.dart'
    show GCreateUserReq;
import 'package:odl_flutter_client/sign_up/graphql/create_user.var.gql.dart'
    show GCreateUserVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateUserData,
  GCreateUserData_createUser,
  GCreateUserInput,
  GCreateUserReq,
  GCreateUserVars,
  GGetMatchIdData,
  GGetMatchIdData_getMatchId,
  GGetMatchIdData_getMatchId_legs,
  GGetMatchIdReq,
  GGetMatchIdVars,
  GSearchOpponentData,
  GSearchOpponentReq,
  GSearchOpponentVars,
  GUpdateMatchInput,
  GUpdateUserInput
])
final Serializers serializers = _serializersBuilder.build();
