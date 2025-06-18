import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lara_jek/app/persentation/rating/rating_notifier.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

class RatingScreen extends AppWidget<RatingNotifier, int, void> {
  RatingScreen({required super.param1});

  @override
  AppBar? appBarBuild(BuildContext context) {
    // TODO: implement appBarBuild
    return AppBar(
      title: Text('Rating'),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Text(
            'Berikan bintang untuk driver.',
            style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.BODY_MEDIUM)
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Center(
            child: RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 5),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
                notifier.rate = rating;
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Komentar',
            style: GlobalHelper.getTextTheme(context,
                appTextStyle: AppTextStyle.BODY_MEDIUM),
          ),
          TextField(
            controller: notifier.commentController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          FilledButton(
            onPressed: () => notifier.send(),
            child: Text('Kirim'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.maxFinite, 48)),
          )
        ],
      ),
    ));
  }

  @override
  checkVariabelAfterUi(BuildContext context) {
    if (notifier.isSuccess) {
      Navigator.pop(context);
    }
  }
}
