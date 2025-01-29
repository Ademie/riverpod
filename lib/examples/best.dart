import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/providers/riverpod.dart';

class Best extends ConsumerWidget {
  const Best({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(riverpodBest).toString()),
            ElevatedButton(onPressed: () {
              ref.read(riverpodBest.notifier).addCounter();
            }, child: Text("+")),
            ElevatedButton(onPressed: () {
              ref.read(riverpodBest.notifier).removeCounter();
            }, child: Text("-")),
          ],
        ),
      ),
    );
  }
}
