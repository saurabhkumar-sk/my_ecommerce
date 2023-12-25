import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

final webUrl = Uri.parse('https://www.google.com/');

class LaunchUrlProvider extends ChangeNotifier {
  Future<void> launchUrls() async {
    if (!await canLaunchUrl(webUrl)) {
      await launchUrl(
        webUrl,
        mode: LaunchMode.inAppBrowserView,
      );
    } else {
      throw "SomeThing Went Wrong in $webUrl";
    }
  }
}
