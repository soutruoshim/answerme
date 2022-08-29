import 'package:answer_me/config/AdmobConfig.dart';
import 'package:answer_me/config/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class EmptyScreenText extends StatelessWidget {
  final String text;
  final IconData icon;

  const EmptyScreenText({Key key, this.text, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final BannerAd myBanner = BannerAd(
    //   adUnitId: AdmobConfig.bannerAdUnitId,
    //   size: AdSize.banner,
    //   request: AdRequest(),
    //   listener: AdListener(),
    // );
    //myBanner.load();
    return Stack(
      children: [
        Container(
          color: Theme.of(context).cardColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.grey.shade300,
                  size: SizeConfig.blockSizeHorizontal * 11,
                ),
                SizedBox(height: SizeConfig.blockSizeVertical),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
