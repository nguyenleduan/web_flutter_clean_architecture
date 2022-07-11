
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_flutter_clean_architecture/config/dimens.dart';
import 'package:web_flutter_clean_architecture/config/languages.dart';
import 'package:web_flutter_clean_architecture/config/global_providers.dart';
import 'package:web_flutter_clean_architecture/config/routes.dart';
import 'package:web_flutter_clean_architecture/config/themes.dart';

import '../signin_page.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(home: new SignIn())
    );
    return MultiProvider(
      providers: GlobalProviders.providers,
      builder: (_, child) => child!,
      child: EasyLocalization(
        supportedLocales: Languages.supportedLocales,
        path: 'assets/translations',
        fallbackLocale: Languages.fallbackLocale,
        child: testWidget
      ),
    );
  }
}