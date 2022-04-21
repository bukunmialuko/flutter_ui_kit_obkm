import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/di/service_locator.dart';
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
