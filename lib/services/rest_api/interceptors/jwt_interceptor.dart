import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:web_flutter_clean_architecture/config/local_keys.dart';
import 'package:web_flutter_clean_architecture/services/local/local_store.dart';

class JWTInterceptor extends Interceptor {
  final LocalStore _store = LocalStore.instance;
  final Logger _logger = Logger();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = _store.get<String>(LocalStoreKeys.accessToken);

    if (token == null) {
      // TODO no token found
    } else {
      options.headers.putIfAbsent('Authorization', () => token);
    }

    super.onRequest(options, handler);
  }
}
