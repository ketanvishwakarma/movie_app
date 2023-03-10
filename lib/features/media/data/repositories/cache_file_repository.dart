import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:movie_app/core/local/default_cache_manager_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_file_repository.g.dart';

@riverpod
CacheFileRepository cacheFileRepository(CacheFileRepositoryRef ref) {
  return CacheFileRepository(cacheManager: ref.watch(defaultCacheManagerProvider));
}

class CacheFileRepository {
  const CacheFileRepository({required this.cacheManager});

  final DefaultCacheManager cacheManager;

  void cacheFile(String url) {
    cacheManager.downloadFile(url);
  }
  
}
