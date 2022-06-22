import 'package:drc_tea_canteen/screens/splash/splash_screen.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base/components/loader_overlay/ots.dart';
import 'base/components/screen_utils/flutter_screenutil.dart';
import 'base/constants/app_themes.dart';
import 'base/constants/app_widgets.dart';
import 'env/environment.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;

  /// Set Environment
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.PROD,
  );
  Environment().initConfig(environment);

  /// Set Portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OTS(
      child: EzLocalizationBuilder(
          delegate: const EzLocalizationDelegate(
              supportedLocales: [Locale('en')], locale: Locale("en")),
          builder: (context, localizationDelegate) {
            return ScreenUtilInit(
              designSize: const Size(446, 960),
              builder: () => MaterialApp(
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!,
                  );
                },
                debugShowCheckedModeBanner: false,
                title: "Anchor",
                theme: normalTheme(context),
                home: const SplashScreen(),
                navigatorKey: navigatorKey,
                localizationsDelegates:
                    localizationDelegate.localizationDelegates,
                supportedLocales: localizationDelegate.supportedLocales,
                localeResolutionCallback:
                    localizationDelegate.localeResolutionCallback,
              ),
            );
          }),
    );
  }
}
