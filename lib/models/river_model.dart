import 'package:flutter/material.dart';

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