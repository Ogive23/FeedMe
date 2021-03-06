import 'package:feedme/Screens/feed_me_intro.dart';
import 'package:feedme/Session/session_manager.dart';
import 'package:feedme/Themes/app_language.dart';
import 'package:feedme/Themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:feedme/Ads/ad_manager.dart';
import 'package:firebase_admob/firebase_admob.dart';
class HomeScreen extends StatelessWidget {
  InterstitialAd myInterstitial;
  Future<void> initAdMob() {
    return FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  }
  void loadInterstitial(){
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );
  }
  @override
  Widget build(BuildContext context) {
    myInterstitial = InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
    AppTheme appTheme = Provider.of<AppTheme>(context);
    AppLanguage appLanguage = Provider.of<AppLanguage>(context);
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FeedMeIntro(appTheme, appLanguage)));
          loadInterstitial();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue[900],
            Colors.blue[800],
            Colors.blue[700],
            Colors.blue[600],
            Colors.blue[500],
            Colors.blue[400],
            Colors.blue[300],
            Colors.blue[200],
            Colors.blue[100],
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 10, bottom: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      appLanguage.words['HomeTitle'],
                      style: TextStyle(
                        color: appTheme.themeData.backgroundColor,
                        fontSize: 70,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans',
                        letterSpacing: 1.4,
                        shadows: [
                          Shadow(
                              color: appTheme.themeData.accentColor,
                              offset: Offset.fromDirection(1, 3))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Image.asset(
                    'assets/images/food.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      appLanguage.words['HomeBody'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                      textDirection: appLanguage.language == 'En'
                          ? TextDirection.ltr
                          : TextDirection.rtl,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      appLanguage.words['HomeSubtitle'],
                    )),
              ],
            ),
          ),
        ));
  }
}
