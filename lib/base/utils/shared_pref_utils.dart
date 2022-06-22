import 'dart:convert';

import 'package:drc_tea_canteen/base/utils/sp_util.dart';

const String KEY_FIRST_TIME_OPEN = "first_time_open";
const String KEY_LOGIN = "login";
const String KEY_USER = "user";
const String KEY_SETTINGS = "settings";
const String KEY_MESSAGES = "messages";
const String KEY_TOKEN = "token";
const String KEY_DARK_MODE = "dark_mode";

const String KEY_OS_VERSION = "os_version";
const String KEY_DEVICE_TYPE = "device_type";
const String KEY_DEVICE_MODEL = "device_model";
const String KEY_STATE_NAME = "state_name";
const String KEY_APP_TOUR = "app_tour";
const String KEY_LAST_LOCATION = "last_location";

void onLogout() {
  setLogin(false);
//  Navigator.of(globalContext).pushAndRemoveUntil(IntroScreen.route(), (route) => false);
}

/// Login
void setLogin(bool isLogin) {
  SpUtil.putBool(KEY_LOGIN, isLogin);
}

bool isLogin() {
  return SpUtil.getBool(KEY_LOGIN, defValue: false);
}

/// Dark Mode
void setDarkMode(bool isEnable) {
  SpUtil.putBool(KEY_DARK_MODE, isEnable);
}

bool getIsDarkMode() {
  return SpUtil.getBool(KEY_DARK_MODE);
}
