import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverpodEasy = StateProvider<int>((ref){
  return 0;
});


// final riverpodHard = ChangeNotifierProvider<RiverModel>((ref){
//   return RiverModel(counter: 0);
// });