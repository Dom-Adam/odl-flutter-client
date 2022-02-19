import 'package:flutter/material.dart';
import 'package:odl_flutter_client/match/bloc/match_bloc.dart';

class MatchEndedDialog extends StatelessWidget {
  const MatchEndedDialog({
    Key? key,
    required this.content,
    required this.matchBloc,
  }) : super(key: key);

  final String content;
  final MatchBloc matchBloc;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(content),
      actions: [
        ElevatedButton(
          onPressed: () {
            print('dialog button on pressed');
            matchBloc.add(const MatchRequestFinish());
          },
          child: const Text('return'),
        )
      ],
    );
  }
}
