import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'default_cache_manager_provider.g.dart';

@riverpod
DefaultCacheManager defaultCacheManager(DefaultCacheManagerRef ref) {
  return DefaultCacheManager();
}
