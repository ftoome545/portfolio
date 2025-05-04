import 'package:get_it/get_it.dart';
import 'package:practice_1/core/services/scroll_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => ScrollService());
}
