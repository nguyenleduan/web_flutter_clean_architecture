import 'package:flutter/material.dart';
import 'package:web_flutter_clean_architecture/app/common/presentation/widgets/dialog/w_error_dialog.dart';
import 'package:web_flutter_clean_architecture/services/dialogs/app_dialog.dart';

abstract class DialogProvider with ChangeNotifier {
  Future showDialog(BuildContext context, WErrorDialog dialog) {
    return AppDialog.show(context, dialog);
  }

  void dismissDialog(BuildContext context) {
    return AppDialog.dismiss(context);
  }
}
