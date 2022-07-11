
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter_clean_architecture/signin_page.dart';
import '../config/global_providers.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: GlobalProviders.providers,
      builder: (_, child) => child!,
      child:Container(
        child: SignIn()
      ),
    );
  }
}
