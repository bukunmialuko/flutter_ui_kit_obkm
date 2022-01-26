import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/14/page_14.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/root/root.dart';
import 'package:get_it/get_it.dart';

import 'generated/l10n.dart';
import 'src/di/service_locator.dart';
import 'src/navigation/navigation_service.dart';
import 'src/navigation/routes.dart';
import 'src/web_ui/7/root.dart';

void main() async {
  await ServiceLocator().setUp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: () => MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: "UI Kit",
        themeMode: ThemeMode.light,
        // navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
        // initialRoute: RootRoutes.initial,
        // onGenerateRoute: routes,
        home: const WebPage7(),
      ),
    );
  }
}
