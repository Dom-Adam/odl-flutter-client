import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/match/bloc/match_bloc.dart';
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
      child: FittedBox(
        fit: BoxFit.contain,
        child: playerName,
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

class ScoreBoardHalf extends StatelessWidget {
  const ScoreBoardHalf({
    Key? key,
    required this.player,
    required this.scoreFields,
  }) : super(key: key);

  final Widget player;
  final List<Widget> scoreFields;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: FittedBox(
            fit: BoxFit.contain,
            child: player,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Row(
            children: scoreFields,
          ),
        ),
      ],
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
