import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/match/bloc/match_bloc.dart';
import 'package:odl_flutter_client/match/view/match_ended_dialog.dart';
import 'package:odl_flutter_client/match/view/numpad.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppCubit>().state;

    return BlocProvider(
      create: (_) => MatchBloc(
        matchId: appState.matchId,
        legId: appState.legId,
        matchRepository: context.read<MatchRepository>(),
        player1: appState.player1,
        player2: appState.player2,
        whoAmI: appState.whoAmI,
        appCubit: context.read<AppCubit>(),
      ),
      child: BlocListener<MatchBloc, MatchState>(
        listenWhen: (previous, current) =>
            previous.player1Legs != current.player1Legs ||
            previous.player2Legs != current.player2Legs ||
            previous.isFinished != current.isFinished,
        listener: (context, state) {
          if (state.player1Legs == 5) {
            showDialog(
              context: context,
              builder: (_) => MatchEndedDialog(
                matchBloc: context.read<MatchBloc>(),
                content: '${state.player1} won',
              ),
              barrierDismissible: false,
            );
          } else if (state.player2Legs == 5) {
            showDialog(
              context: context,
              builder: (_) => MatchEndedDialog(
                content: '${state.player2} won',
                matchBloc: context.read<MatchBloc>(),
              ),
              barrierDismissible: false,
            );
          } else if (state.isFinished) {
            showDialog(
              context: context,
              builder: (_) => MatchEndedDialog(
                content: 'your opponent left the match',
                matchBloc: context.read<MatchBloc>(),
              ),
              barrierDismissible: false,
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Match'),
            automaticallyImplyLeading: false,
            actions: [
              BlocBuilder<MatchBloc, MatchState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      print('app bar icon button');
                      context.read<MatchBloc>().add(const MatchRequestFinish());
                    },
                    icon: const Icon(Icons.close),
                  );
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      PlayerName(
                        playerName: BlocSelector<MatchBloc, MatchState, String>(
                          selector: (state) => state.player1,
                          builder: (context, state) => Text(state),
                        ),
                      ),
                      PlayerName(
                        playerName: BlocSelector<MatchBloc, MatchState, String>(
                          selector: (state) => state.player2,
                          builder: (context, state) => Text(state),
                        ),
                      ),
                    ],
                  ),
                ),
                const ScoreBoard(),
                Numpad()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlayerName extends StatelessWidget {
  const PlayerName({
    Key? key,
    required this.playerName,
  }) : super(key: key);

  final Widget playerName;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: FractionallySizedBox(
        heightFactor: 0.2,
        child: FittedBox(
          child: playerName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ScoreField(
            label: 'legs',
            blocSelector: BlocSelector<MatchBloc, MatchState, int>(
              selector: (state) => state.player1Legs,
              builder: (context, state) => Text(state.toString()),
            ),
          ),
          ScoreField(
            flex: 3,
            label: 'points',
            blocSelector: BlocSelector<MatchBloc, MatchState, int>(
              selector: (state) => state.player1Points,
              builder: (context, state) => Text(state.toString()),
            ),
          ),
          ScoreField(
            flex: 3,
            label: 'points',
            blocSelector: BlocSelector<MatchBloc, MatchState, int>(
              selector: (state) => state.player2Points,
              builder: (context, state) => Text(state.toString()),
            ),
          ),
          ScoreField(
            label: 'legs',
            blocSelector: BlocSelector<MatchBloc, MatchState, int>(
              selector: (state) => state.player2Legs,
              builder: (context, state) => Text(state.toString()),
            ),
          ),
        ],
      ),
    );
  }
}

class ScoreField extends StatelessWidget {
  const ScoreField({
    Key? key,
    required this.label,
    required this.blocSelector,
    this.flex = 1,
  }) : super(key: key);

  final String label;
  final Widget blocSelector;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              label,
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: FittedBox(
              fit: BoxFit.contain,
              child: blocSelector,
            ),
          ),
        ],
      ),
    );
  }
}
