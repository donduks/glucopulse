import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/converter/application/store_notifier.dart';
import 'package:gluco_pulse3/core/application/name_notifier.dart';

final nameProvider = StateNotifierProvider<UserName, String>((ref) {
  return UserName();
});

final numberProvider =
    StateNotifierProvider<MyConverter, String>((ref) => MyConverter());
