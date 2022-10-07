import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      //C160479337B109C9658C44AFD104D269   ca-app-pub-7404555092171468/8320421410
      return 'ca-app-pub-7404555092171468/4188540378'; //;'ca-app-pub-7404555092171468/8320421410';//'ca-app-pub-7404555092171468/4188540378';////ca-app-pub-1676784020583015/5625628550
    } else if (Platform.isIOS) {
      return 'ca-app-pub-1676784020583015/5625628550';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-1676784020583015/3546260126";
    } else if (Platform.isIOS) {
      return "ca-app-pub-1676784020583015/3546260126";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  /*static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/5224354917";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1712485313";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }*/
}
