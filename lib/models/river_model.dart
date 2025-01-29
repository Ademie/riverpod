import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverModel extends ChangeNotifier{
  int counter;
  RiverModel({
    required this.counter,
  });
  void addCounter(){
    counter++;
    notifyListeners();
  }

  void removeCounter(){
    counter--;
    notifyListeners();
  }
}


class RiverModelNotifier extends StateNotifier<int>{
  RiverModelNotifier() : super(0);
  void addCounter() => state++;
  void removeCounter() => state--;
}

