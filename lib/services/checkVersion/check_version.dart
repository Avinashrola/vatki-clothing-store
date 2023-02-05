// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_store/open_store.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../utils/constant/app_color.dart';

class CheckVersion {
  static String showLocalVersion = "";
  static PackageInfo? packageInfo;
  static String version = "", buildNumber = "";

  static void checkVersion(
      BuildContext context, String? latestAppVersion) async {
    if (latestAppVersion != null) {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      String localVersion = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
      log('localVersion~~~~~$localVersion');
      log('latestVersion~~~~$latestAppVersion');
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
      List<String> storeVersion = latestAppVersion.toString().split('.');
      List<String> localVersionList = [];
      List<String> temp = localVersion.split('.');

      localVersionList.add(temp[0]);
      localVersionList.add(temp[1]);
      localVersionList.add(buildNumber);
      showLocalVersion = "${temp[0]}.${temp[1]}.$buildNumber";
      if (localVersionList[0] != storeVersion[0]) {
        await showUpdateDialog(context, true, latestAppVersion);
      } else if (localVersionList[1] != storeVersion[1]) {
        await showUpdateDialog(context, true, latestAppVersion);
      } else if (localVersionList[2] != storeVersion[2]) {
        await showUpdateDialog(context, false, latestAppVersion);
      }
    }
  }

  static Future showUpdateDialog(
      BuildContext context, bool forceUpdate, String? latestAppVersion) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "New Update Available";
        String message =
            "There is a newer version of app available please update it now.\n\nPlease update the app from $showLocalVersion to $latestAppVersion";
        String btnLabel = "Update Now";
        String btnLabelCancel = "Later";
        return Platform.isIOS
            ? WillPopScope(
                onWillPop: () async => forceUpdate ? false : true,
                child: AlertDialog(
                  title: Text(title),
                  content: Text(message),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColors,
                      ),
                      child: Text(btnLabel),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                      ),
                      child: Text(btnLabelCancel),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              )
            : WillPopScope(
                onWillPop: () async => forceUpdate ? false : true,
                child: AlertDialog(
                  title: Text(title),
                  content: Text(message),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                      ),
                      child: Text(btnLabel),
                      onPressed: () {
                        Navigator.pop(context);
                        _launchUrl();
                      },
                    ),
                    !forceUpdate
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black54,
                            ),
                            child: Text(btnLabelCancel),
                            onPressed: () => Navigator.pop(context),
                          )
                        : const SizedBox()
                  ],
                ),
              );
      },
    );
  }

  static Future<void> _launchUrl() async {
    OpenStore.instance.open(
      appStoreId: '', // AppStore id of your app
      androidAppBundleId:
          'com.chillipos.master', // Android app bundle package name
    );
  }
}
