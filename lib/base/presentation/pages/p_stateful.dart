import 'package:flutter/material.dart';
import 'package:web_flutter_clean_architecture/base/presentation/pages/page_actions.dart';
import 'package:web_flutter_clean_architecture/base/presentation/providers/dialog_provider.dart';
import 'package:provider/provider.dart';

abstract class PageStateful<T extends DialogProvider, P extends StatefulWidget>
    extends State<P> implements PageActions {
  late final T provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of(context, listen: false);

    initialization(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildPage(context),
      ),
    );
  }
}
