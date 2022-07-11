import 'package:flutter/material.dart';
import 'package:web_flutter_clean_architecture/base/presentation/pages/p_stateful.dart';
import 'package:web_flutter_clean_architecture/base/presentation/providers/loading_provider.dart';
import 'package:web_flutter_clean_architecture/base/presentation/widgets/w_loading_builder.dart';

abstract class PageLoadingStateful<T extends LoadingProvider,
    P extends StatefulWidget> extends PageStateful<T, P> {
  @override
  Widget build(BuildContext context) {
    final parent = super.build(context);

    return WidgetLoadingBuilder<T>(buildPage(context), parent);
  }
}
