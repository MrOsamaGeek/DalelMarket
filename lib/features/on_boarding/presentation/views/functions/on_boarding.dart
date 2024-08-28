import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/services_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isOnBoardingVisited', value: true);
}
