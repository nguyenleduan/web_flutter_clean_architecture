import 'package:easy_localization/easy_localization.dart';

import '../../../../base/domain/usecase/params.dart';
import '../../../../base/presentation/providers/loading_provider.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../domain/usecases/check_connection_usecase.dart';
class HomeProvider extends LoadingProvider {
  final CheckConnectionUseCase _checkConnectionUseCase;

  HomeProvider(this._checkConnectionUseCase);

  String title = tr(LocaleKeys.general);

  Future<void> checkConnection() async {
    final result = await _checkConnectionUseCase.call(NoParams());
    title = result.fold((l) => l.message, (r) => r.message);
  }
}
