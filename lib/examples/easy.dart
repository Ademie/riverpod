import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/providers/riverpod.dart';

class Easy extends ConsumerWidget {
  const Easy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(riverpodEasy).toString()),
            ElevatedButton(onPressed: () {
              ref.read(riverpodEasy.notifier).state++;
            }, child: Text("+")),
            ElevatedButton(onPressed: () {
              ref.read(riverpodEasy.notifier).state--;
            }, child: Text("-")),
          ],
        ),
      ),
    );
  }
}
