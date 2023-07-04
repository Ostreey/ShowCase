import 'package:flutter_riverpod/flutter_riverpod.dart';



import '../job_list/job_list_provider.dart';
import '../../../data/Api.dart';
import '../../../domain/models/common_models/model.dart';


final searchTextProvider = StateProvider<Filtering>((ref) {
  return Filtering("");
});
final bottomNavIndex = StateProvider<int>((ref) {
  return 0;
});


final DeliveryButtonProvider = StateProvider<bool>((ref) {
  return false;
});
final PickupButtonProvider = StateProvider<bool>((ref) {
  return false;
});
final MiddleScreenTabProvider = StateProvider<int>((ref) {
  return 1;
});


