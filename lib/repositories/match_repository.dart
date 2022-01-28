import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.data.gql.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.req.gql.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.var.gql.dart';
import 'package:odl_flutter_client/home/graphql/search_opponent.req.gql.dart';
import 'package:odl_flutter_client/main.dart';
import 'package:rxdart/subjects.dart';

enum MatchStatus { inactive, waiting, active }

class MatchRepository {
  final matchStatusSubject = BehaviorSubject<MatchStatus>();
  final getMatchIdSubject = BehaviorSubject<OperationResponse>();
  


  StreamSubscription<OperationResponse<GGetMatchIdData, GGetMatchIdVars>>
      getMatchIdStream(
    String userId,
  ) {
    print(userId);
    return graphqlClient
        .request(GGetMatchIdReq((b) => b..vars.userId = userId))
        .listen((event) {
      print(event.graphqlErrors);
      print(event.data);

      if (event.data?.getMatchId.id.isNotEmpty == true &&
          event.data?.getMatchId.legs.first.id.isNotEmpty == true) {
        getMatchIdSubject.add(event);
        matchStatusSubject.add(MatchStatus.active); 
      } else {
        matchStatusSubject.add(MatchStatus.inactive);
      }
    });
  }

  Future<void> searchOpponent() async {
    final response = await graphqlClient.request(GSearchOpponentReq()).first;
    if (response.data?.searchOpponent.isNotEmpty == true) {
      matchStatusSubject.add(MatchStatus.waiting);
    } else {
      matchStatusSubject.add(MatchStatus.inactive);
    }
  }
}
