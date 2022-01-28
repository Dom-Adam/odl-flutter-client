import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match'),
      ),
      body: const Center(
        child: Text('Match Page'),
      ),
    );
  }
}