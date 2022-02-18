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
  final _matchStatusSubject = BehaviorSubject<bool>();
  Stream<bool> get matchStatus async* {
    yield* _matchStatusSubject.stream;
  }

  late Stream<OperationResponse<GGetMatchIdData, GGetMatchIdVars>>
      getMatchIdController;

  final matchVisitController = StreamController();

  Future<OperationResponse<GGetMatchIdData, GGetMatchIdVars>> searchOpponent(
      String userId) {
    _matchStatusSubject.add(true);
    final reponse = graphqlClient
        .request(GGetMatchIdReq((b) => b..vars.userId = userId))
        .first;
    final request = graphqlClient.request(GSearchOpponentReq()).first;

    return reponse;
  }

  Stream<OperationResponse<GListenToMatchData, GListenToMatchVars>>
      listenToMatch(String matchId) {
    return graphqlClient
        .request(GListenToMatchReq((b) => b..vars.matchId = matchId));
  }

  void foundOpponent() => _matchStatusSubject.add(false);

  Future<OperationResponse<GUpdateMatchData, GUpdateMatchVars>> updateMatch({
    required int field,
    required String legId,
    required String matchId,
    required int segment,
    bool isFinished = false,
  }) {
    print('update match called');
    return graphqlClient
        .request(GUpdateMatchReq((b) => b
          ..vars.score.field = field
          ..vars.score.legId = legId
          ..vars.score.matchId = matchId
          ..vars.score.segment = segment
          ..vars.score.isFinished = isFinished))
        .first;
  }
}
