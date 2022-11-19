import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/new_routes.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "UI Kit",
        themeMode: ThemeMode.light,
        routerConfig: newRoutesConfig,
        // navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
        // initialRoute: MobileRoutes.root,
        // onGenerateRoute: routes,
        // home: RootWidget(),
      ),
    );
  }
}
