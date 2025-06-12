import 'package:flutter/material.dart';
import 'package:lara_jek/core/dependency/dependency.dart';
import 'package:lara_jek/core/helper/dialog_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';
import 'package:lara_jek/core/widget/error_app_widget.dart';
import 'package:lara_jek/core/widget/loading_app_widget.dart';
import 'package:provider/provider.dart';

abstract class AppWidget<T extends AppProvider, P1, P2>
    extends StatelessWidget {
  final P1? param1;
  final P2? param2;
  late T notifier;

  AppWidget({Key? key, this.param1, this.param2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => sl(param1: param1, param2: param2),
      builder: (context, buid) => _build(context),
    );
  }

  Widget _build(BuildContext context) {
    notifier = Provider.of<T>(context);

    WidgetsBinding.instance.addPostFrameCallback(
      (timestamp) {
        if (notifier.snackBarMessage.isNotEmpty) {
          DialogHelper.showSnackBar(
              context: context, text: notifier.snackBarMessage);
          notifier.snackBarMessage = '';
        }
        checkVariabelAfterUi(context);
      },
    );

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (notifier.snackBarMessage.isNotEmpty) {
    //     DialogHelper.showSnackBar(
    //       context: context,
    //       text: notifier.snackBarMessage,
    //       // isError: notifier.isErrorMessage, // kalau kamu punya flag error
    //     );
    //     notifier.snackBarMessage = '';
    //   }
    // });

    return Scaffold(
      appBar: appBarBuild(context),
      body: (notifier.isLoading)
          ? LoadingAppWidget()
          : (notifier.errorMessage.isNotEmpty)
              ? ErrorAppWidget(
                  description: notifier.errorMessage,
                  onPressButton: () {
                    notifier.init();
                    notifier.errorMessage = '';
                  })
              : bodyBuild(context),
    );
  }

  AppBar? appBarBuild(BuildContext context) {
    return null;
  }

  Widget bodyBuild(BuildContext context);
  checkVariabelAfterUi(BuildContext context) {}
}
