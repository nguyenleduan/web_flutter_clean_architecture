import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter_clean_architecture/services/dialogs/app_dialog.dart';
import 'package:web_flutter_clean_architecture/services/dialogs/app_loading.dart';

import '../signin_page.dart';

class GlobalProviders {
  GlobalProviders._internal();

  static List<Provider> get providers => [
        Provider<SignIn>(create: (_) => SignIn()),
        Provider<AppDialog>(create: (_) => AppDialog()),
        Provider<AppLoading>(create: (_) => AppLoading()),
      ];
}
