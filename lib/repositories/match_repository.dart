import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.data.gql.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.req.gql.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.var.gql.dart';
import 'package:odl_flutter_client/home/graphql/search_opponent.req.gql.dart';
import 'package:odl_flutter_client/main.dart';
import 'package:odl_flutter_client/match/graphql/listen_to_match.data.gql.dart';
import 'package:odl_flutter_client/match/graphql/listen_to_match.req.gql.dart';
import 'package:odl_flutter_client/match/graphql/listen_to_match.var.gql.dart';
import 'package:odl_flutter_client/match/graphql/update_match.data.gql.dart';
import 'package:odl_flutter_client/match/graphql/update_match.req.gql.dart';
import 'package:odl_flutter_client/match/graphql/update_match.var.gql.dart';
import 'package:rxdart/rxdart.dart';

enum MatchStatus { inactive, waiting, active }

class MatchRepository {
  final matchStatusSubject = BehaviorSubject<MatchStatus>();
  final getMatchIdController =
      BehaviorSubject<OperationResponse<GGetMatchIdData, GGetMatchIdVars>>();
  Stream<OperationResponse<GGetMatchIdData, GGetMatchIdVars>>
      get getMatchIdStream async* {
    yield* getMatchIdController.stream;
  }

  final matchVisitController = StreamController();

  StreamSubscription<OperationResponse<GGetMatchIdData, GGetMatchIdVars>>
      getMatchId(
    String userId,
  ) {
    return graphqlClient
        .request(GGetMatchIdReq((b) => b..vars.userId = userId))
        .listen((event) {
      if (event.data?.getMatchId.id.isNotEmpty == true &&
          event.data?.getMatchId.legs.first.id.isNotEmpty == true) {
        getMatchIdController.add(event);

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

  Stream<OperationResponse<GListenToMatchData, GListenToMatchVars>>
      listenToMatch(String matchId) {
    return graphqlClient
        .request(GListenToMatchReq((b) => b..vars.matchId = matchId));
  }

  Future<OperationResponse<GUpdateMatchData, GUpdateMatchVars>> updateMatch(
      int field, String legId, String matchId, int segment) {
    return graphqlClient
        .request(GUpdateMatchReq((b) => b
          ..vars.score.field = field
          ..vars.score.legId = legId
          ..vars.score.matchId = matchId
          ..vars.score.segment = segment))
        .first;
  }
}
