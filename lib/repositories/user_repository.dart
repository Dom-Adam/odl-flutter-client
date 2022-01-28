import 'dart:async';

import 'package:odl_flutter_client/main.dart';
import 'package:odl_flutter_client/sign_up/graphql/create_user.req.gql.dart';

class UserRepository {
  Future<bool> createUser(
    String email,
    String username,
    String password,
  ) async {
    final response = await graphqlClient
        .request(GCreateUserReq((b) => b
          ..vars.user.email = email
          ..vars.user.username = username
          ..vars.user.password = password))
        .first;

    return response.data?.createUser.email == email &&
        response.data?.createUser.username == username;
  }
}
