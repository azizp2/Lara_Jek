import 'package:flutter/material.dart';
import 'package:lara_jek/core/helper/global_helper.dart';

class DialogHelper {
  static showSnackBar({required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  static showFullScreenDialog(
      {required BuildContext context,
      required String title,
      bool canDismiss = true,
      required Widget content}) {
    return showDialog<void>(
      context: context,
      useSafeArea: true,
      barrierDismissible: canDismiss,
      builder: (context) => Dialog.fullscreen(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.TITLE_MEDIUM)
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  (canDismiss)
                      ? IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.clear))
                      : SizedBox()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: content)
            ],
          ),
        ),
      ),
    );
  }
}
