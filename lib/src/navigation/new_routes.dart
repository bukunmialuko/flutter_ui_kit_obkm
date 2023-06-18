import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/1/page1.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/10/page_10.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/11/page_11.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/12/page_12.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/13/page_13.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/14/page_14.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/15/page_15.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/157_160/page_156.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/16/page16.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/17/page_17.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/175/page_175.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/18/page_18.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/19/page_19.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/2/page2.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/22/page_22.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/23/page_23.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/28/page_28.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/29/page_29.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/3/page3.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/30/page_30.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/31/page_31.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/35/page_35.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/38/page_38.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/39/page_39.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/4/page4.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/40/page_40.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/41/page_41.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/43/page_43.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/46/page_46.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/47/page_47.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/49/page_49.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/5/page5.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/50/page_50.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/54/page_54.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/55/page_55.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/56/page_56.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/57/page_57.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/58/page_58.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/6/page6.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/7/page7.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/8/page8.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/9/page9.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/root/root.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../mobile_ui/20/page_20.dart';
import '../mobile_ui/21/page_21.dart';
import '../mobile_ui/24/page_24.dart';
import '../mobile_ui/25/page_25.dart';
import '../mobile_ui/26/page26.dart';
import '../mobile_ui/27/page_27.dart';
import '../mobile_ui/32/page_32.dart';
import '../mobile_ui/33/page_33.dart';
import '../mobile_ui/34/page_34.dart';
import '../mobile_ui/36/page_36.dart';
import '../mobile_ui/37/page_37.dart';
import '../mobile_ui/42/page_42.dart';
import '../mobile_ui/44/page_44.dart';
import '../mobile_ui/45/page_45.dart';
import '../mobile_ui/48/page_48.dart';
import '../mobile_ui/51/page_51.dart';
import '../mobile_ui/52/page_52.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

var newRoutesConfig = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: rootNavigatorKey,
  errorBuilder: (_, __) => Scaffold(
    body: Center(
      child: Text("404: Page Not Found"),
    ),
  ),
  routes: <RouteBase>[
    GoRoute(
      path: MobileRoutes.root,
      builder: (BuildContext context, GoRouterState state) =>
          const RootWidget(),
      routes: <GoRoute>[
        /// Mobile 1 - 20
        GoRoute(
          path: MobileRoutes.pg1,
          builder: (BuildContext context, GoRouterState state) => const Page1(),
        ),
        GoRoute(
          path: MobileRoutes.pg2,
          builder: (BuildContext context, GoRouterState state) => const Page2(),
        ),
        GoRoute(
          path: MobileRoutes.pg3,
          builder: (BuildContext context, GoRouterState state) => const Page3(),
        ),
        GoRoute(
          path: MobileRoutes.pg4,
          builder: (BuildContext context, GoRouterState state) => const Page4(),
        ),
        GoRoute(
          path: MobileRoutes.pg5,
          builder: (BuildContext context, GoRouterState state) => const Page5(),
        ),
        GoRoute(
          path: MobileRoutes.pg6,
          builder: (BuildContext context, GoRouterState state) => const Page6(),
        ),
        GoRoute(
          path: MobileRoutes.pg7,
          builder: (BuildContext context, GoRouterState state) => const Page7(),
        ),
        GoRoute(
          path: MobileRoutes.pg8,
          builder: (BuildContext context, GoRouterState state) => const Page8(),
        ),
        GoRoute(
          path: MobileRoutes.pg9,
          builder: (BuildContext context, GoRouterState state) => const Page9(),
        ),
        GoRoute(
          path: MobileRoutes.pg10,
          builder: (BuildContext context, GoRouterState state) =>
              const Page10(),
        ),
        GoRoute(
          path: MobileRoutes.pg11,
          builder: (BuildContext context, GoRouterState state) =>
              const Page11(),
        ),
        GoRoute(
          path: MobileRoutes.pg12,
          builder: (BuildContext context, GoRouterState state) =>
              const Page12(),
        ),
        GoRoute(
          path: MobileRoutes.pg13,
          builder: (BuildContext context, GoRouterState state) =>
              const Page13(),
        ),
        GoRoute(
          path: MobileRoutes.pg14,
          builder: (BuildContext context, GoRouterState state) =>
              const Page14(),
        ),
        GoRoute(
          path: MobileRoutes.pg15,
          builder: (BuildContext context, GoRouterState state) =>
              const Page15(),
        ),
        GoRoute(
          path: MobileRoutes.pg16,
          builder: (BuildContext context, GoRouterState state) =>
              const Page16(),
        ),
        GoRoute(
          path: MobileRoutes.pg17,
          builder: (BuildContext context, GoRouterState state) =>
              const Page17(),
        ),
        GoRoute(
          path: MobileRoutes.pg18,
          builder: (BuildContext context, GoRouterState state) =>
              const Page18(),
        ),
        GoRoute(
          path: MobileRoutes.pg19,
          builder: (BuildContext context, GoRouterState state) =>
              const Page19(),
        ),
        GoRoute(
          path: MobileRoutes.pg20,
          builder: (BuildContext context, GoRouterState state) =>
              const Page20(),
        ),

        /// Mobile 21 - 40

        GoRoute(
          path: MobileRoutes.pg21,
          builder: (BuildContext context, GoRouterState state) =>
              const Page21(),
        ),
        GoRoute(
          path: MobileRoutes.pg22,
          builder: (BuildContext context, GoRouterState state) =>
              const Page22(),
        ),
        GoRoute(
          path: MobileRoutes.pg21,
          builder: (BuildContext context, GoRouterState state) =>
              const Page21(),
        ),
        GoRoute(
          path: MobileRoutes.pg23,
          builder: (BuildContext context, GoRouterState state) =>
              const Page23(),
        ),
        GoRoute(
          path: MobileRoutes.pg24,
          builder: (BuildContext context, GoRouterState state) =>
              const Page24(),
        ),
        GoRoute(
          path: MobileRoutes.pg25,
          builder: (BuildContext context, GoRouterState state) =>
              const Page25(),
        ),
        GoRoute(
          path: MobileRoutes.pg26,
          builder: (BuildContext context, GoRouterState state) =>
              const Page26(),
        ),
        GoRoute(
          path: MobileRoutes.pg27,
          builder: (BuildContext context, GoRouterState state) =>
              const Page27(),
        ),
        GoRoute(
          path: MobileRoutes.pg28,
          builder: (BuildContext context, GoRouterState state) =>
              const Page28(),
        ),
        GoRoute(
          path: MobileRoutes.pg29,
          builder: (BuildContext context, GoRouterState state) =>
              const Page29(),
        ),
        GoRoute(
          path: MobileRoutes.pg30,
          builder: (BuildContext context, GoRouterState state) =>
              const Page30(),
        ),
        GoRoute(
          path: MobileRoutes.pg31,
          builder: (BuildContext context, GoRouterState state) =>
              const Page31(),
        ),
        GoRoute(
          path: MobileRoutes.pg32,
          builder: (BuildContext context, GoRouterState state) =>
              const Page32(),
        ),
        GoRoute(
          path: MobileRoutes.pg33,
          builder: (BuildContext context, GoRouterState state) =>
              const Page33(),
        ),
        GoRoute(
          path: MobileRoutes.pg34,
          builder: (BuildContext context, GoRouterState state) =>
              const Page34(),
        ),
        GoRoute(
          path: MobileRoutes.pg35,
          builder: (BuildContext context, GoRouterState state) =>
              const Page35(),
        ),
        GoRoute(
          path: MobileRoutes.pg36,
          builder: (BuildContext context, GoRouterState state) =>
              const Page36(),
        ),
        GoRoute(
          path: MobileRoutes.pg37,
          builder: (BuildContext context, GoRouterState state) =>
              const Page37(),
        ),
        GoRoute(
          path: MobileRoutes.pg38,
          builder: (BuildContext context, GoRouterState state) =>
              const Page38(),
        ),
        GoRoute(
          path: MobileRoutes.pg39,
          builder: (BuildContext context, GoRouterState state) =>
              const Page39(),
        ),
        GoRoute(
          path: MobileRoutes.pg40,
          builder: (BuildContext context, GoRouterState state) =>
              const Page40(),
        ),

        /// Mobile 41 - 60
        GoRoute(
          path: MobileRoutes.pg41,
          builder: (BuildContext context, GoRouterState state) =>
              const Page41(),
        ),
        GoRoute(
          path: MobileRoutes.pg42,
          builder: (BuildContext context, GoRouterState state) =>
              const Page42(),
        ),
        GoRoute(
          path: MobileRoutes.pg43,
          builder: (BuildContext context, GoRouterState state) =>
              const Page43(),
        ),
        GoRoute(
          path: MobileRoutes.pg44,
          builder: (BuildContext context, GoRouterState state) =>
              const Page44(),
        ),
        GoRoute(
          path: MobileRoutes.pg45,
          builder: (BuildContext context, GoRouterState state) =>
              const Page45(),
        ),
        GoRoute(
          path: MobileRoutes.pg46,
          builder: (BuildContext context, GoRouterState state) =>
              const Page46(),
        ),
        GoRoute(
          path: MobileRoutes.pg47,
          builder: (BuildContext context, GoRouterState state) =>
              const Page47(),
        ),
        GoRoute(
          path: MobileRoutes.pg48,
          builder: (BuildContext context, GoRouterState state) =>
              const Page48(),
        ),
        GoRoute(
          path: MobileRoutes.pg49,
          builder: (BuildContext context, GoRouterState state) =>
              const Page49(),
        ),
        GoRoute(
          path: MobileRoutes.pg50,
          builder: (BuildContext context, GoRouterState state) =>
              const Page50(),
        ),
        GoRoute(
          path: MobileRoutes.pg51,
          builder: (BuildContext context, GoRouterState state) =>
              const Page51(),
        ),
        GoRoute(
          path: MobileRoutes.pg52,
          builder: (BuildContext context, GoRouterState state) =>
              const Page52(),
        ),
        GoRoute(
          path: MobileRoutes.pg54,
          builder: (BuildContext context, GoRouterState state) =>
              const Page54(),
        ),
        GoRoute(
          path: MobileRoutes.pg55,
          builder: (BuildContext context, GoRouterState state) =>
              const Page55(),
        ),
        GoRoute(
          path: MobileRoutes.pg56,
          builder: (BuildContext context, GoRouterState state) =>
              const Page56(),
        ),
        GoRoute(
          path: MobileRoutes.pg57,
          builder: (BuildContext context, GoRouterState state) =>
              const Page57(),
        ),
        GoRoute(
          path: MobileRoutes.pg58,
          builder: (BuildContext context, GoRouterState state) =>
              const Page58(),
        ),
        GoRoute(
          path: MobileRoutes.pg59,
          builder: (BuildContext context, GoRouterState state) =>
              const SizedBox(),
        ),
        GoRoute(
          path: MobileRoutes.pg60,
          builder: (BuildContext context, GoRouterState state) =>
              const SizedBox(),
        ),

        /// 141 - 160
        GoRoute(
          path: MobileRoutes.pg156,
          builder: (BuildContext context, GoRouterState state) =>
              const Page156To160(),
        ),

        GoRoute(
          path: MobileRoutes.pg175,
          builder: (BuildContext context, GoRouterState state) =>
              const Page175(),
        ),
      ],
    ),
  ],
);
