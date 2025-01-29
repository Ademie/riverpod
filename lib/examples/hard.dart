import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/providers/riverpod.dart';

class Hard extends ConsumerWidget {
  const Hard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(riverpodHard).counter.toString()),
            ElevatedButton(onPressed: () {
              ref.read(riverpodHard).addCounter();
            }, child: Text("+")),
            ElevatedButton(onPressed: () {
              ref.read(riverpodHard).removeCounter();
            }, child: Text("-")),
          ],
        ),
      ),
    );
  }
}
