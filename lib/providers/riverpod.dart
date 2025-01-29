import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/models/river_model.dart';

final riverpodEasy = StateProvider<int>((ref){
  return 0;
});


final riverpodHard = ChangeNotifierProvider<RiverModel>((ref){
  return RiverModel(counter: 0);
});



final riverpodBest = StateNotifierProvider<RiverModelNotifier, int>((ref){
  return RiverModelNotifier();
});