import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/common/constants.dart';
import 'package:odl_flutter_client/match/bloc/match_bloc.dart';
import 'package:formz/formz.dart';

class Numpad extends StatelessWidget {
  Numpad({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: BlocBuilder<MatchBloc, MatchState>(
                      buildWhen: (previous, current) =>
                          previous.scoreField != current.scoreField,
                      builder: (context, state) {
                        return Text(
                          state.scoreField,
                          textAlign: TextAlign.center,
                          style: state.score.invalid
                              ? TextStyle(color: Theme.of(context).errorColor)
                              : null,
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => context
                        .read<MatchBloc>()
                        .add(const MatchScoreChanged(backspace)),
                    icon: const Icon(Icons.backspace),
                  ),
                )
              ],
            ),
          ),
          const NumpadRow(keys: ['1', '2', '3']),
          const NumpadRow(keys: ['4', '5', '6']),
          const NumpadRow(keys: ['7', '8', '9']),
          Flexible(
            fit: FlexFit.tight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                NumberKey(number: '0'),
                ToggleButton(index: 0, text: 'double'),
                ToggleButton(index: 1, text: 'treble'),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: BlocBuilder<MatchBloc, MatchState>(
              buildWhen: (previous, current) =>
                  previous.currentlyThrowing != current.currentlyThrowing ||
                  previous.status != current.status,
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state.whoAmI == state.currentlyThrowing &&
                          state.status.isValidated
                      ? () {
                          context
                              .read<MatchBloc>()
                              .add(const MatchScoreSubmitted());
                        }
                      : null,
                  child: const Text('enter'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NumberKey extends StatelessWidget {
  const NumberKey({Key? key, required this.number}) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: BlocBuilder<MatchBloc, MatchState>(
        buildWhen: (previous, current) =>
            previous.currentlyThrowing != current.currentlyThrowing,
        builder: (context, state) {
          return ElevatedButton(
            onPressed: state.currentlyThrowing == state.whoAmI
                ? () => context.read<MatchBloc>().add(MatchScoreChanged(number))
                : null,
            child: Text(number),
          );
        },
      ),
    );
  }
}

class NumpadRow extends StatelessWidget {
  const NumpadRow({Key? key, required this.keys}) : super(key: key);

  final List<String> keys;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: keys.map((e) => NumberKey(number: e)).toList(),
      ),
    );
  }
}

class ToggleButton extends StatelessWidget {
  const ToggleButton({Key? key, required this.index, required this.text})
      : super(key: key);

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: BlocBuilder<MatchBloc, MatchState>(
        buildWhen: (previous, current) =>
            previous.currentlyThrowing != current.currentlyThrowing ||
            previous.selections[index] != current.selections[index],
        builder: (context, state) {
          return ElevatedButton(
            style: const ButtonStyle().copyWith(
              backgroundColor: MaterialStateProperty.all(
                  state.selections[index] ? Colors.green : null),
            ),
            onPressed: state.currentlyThrowing == state.whoAmI
                ? () {
                    context.read<MatchBloc>().add(MatchSegmentChanged(index));
                  }
                : null,
            child: Text(text),
          );
        },
      ),
    );
  }
}
