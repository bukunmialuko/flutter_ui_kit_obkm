// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/1/page1.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/10/page_10.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/11/page_11.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/12/page_12.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/13/page_13.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/14/page_14.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/15/page_15.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/16/page16.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/17/page_17.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/18/page_18.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/19/page_19.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/2/page2.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/28/page_28.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/29/page_29.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/3/page3.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/4/page4.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/49/page_49.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/5/page5.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/6/page6.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/7/page7.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/8/page8.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/9/page9.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/routes/routes.dart';

import '../mobile_ui/20/page_20.dart';
import '../mobile_ui/21/page_21.dart';
import '../mobile_ui/24/page_24.dart';
import '../mobile_ui/25/page_25.dart';
import '../mobile_ui/26/page26.dart';
import '../mobile_ui/27/page_27.dart';
import '../mobile_ui/32/page_32.dart';
import '../mobile_ui/33/page_33.dart';
import '../mobile_ui/34/page_34.dart';
import '../mobile_ui/42/page_42.dart';
import '../mobile_ui/44/page_44.dart';
import '../mobile_ui/45/page_45.dart';
import '../mobile_ui/48/page_48.dart';
import '../mobile_ui/51/page_51.dart';
import '../mobile_ui/52/page_52.dart';
import 'fade_route.dart';

var routes = (RouteSettings settings) {
  switch (settings.name) {

    /// Mobile 1 - 20
    case MobileRoutes.pg1:
      return FadeRoute(
        page: const Page1(),
      );

    case MobileRoutes.pg2:
      return FadeRoute(
        page: const Page2(),
      );

    case MobileRoutes.pg3:
      return FadeRoute(
        page: const Page3(),
      );
    case MobileRoutes.pg4:
      return FadeRoute(
        page: const Page4(),
      );
    case MobileRoutes.pg5:
      return FadeRoute(
        page: const Page5(),
      );
    case MobileRoutes.pg6:
      return FadeRoute(
        page: const Page6(),
      );
    case MobileRoutes.pg7:
      return FadeRoute(
        page: const Page7(),
      );
    case MobileRoutes.pg8:
      return FadeRoute(
        page: const Page8(),
      );
    case MobileRoutes.pg9:
      return FadeRoute(
        page: const Page9(),
      );
    case MobileRoutes.pg10:
      return FadeRoute(
        page: const Page10(),
      );
    case MobileRoutes.pg11:
      return FadeRoute(
        page: const Page11(),
      );
    case MobileRoutes.pg12:
      return FadeRoute(
        page: const Page12(),
      );
    case MobileRoutes.pg13:
      return FadeRoute(
        page: const Page13(),
      );
    case MobileRoutes.pg14:
      return FadeRoute(
        page: const Page14(),
      );
    case MobileRoutes.pg15:
      return FadeRoute(
        page: const Page15(),
      );
    case MobileRoutes.pg16:
      return FadeRoute(
        page: const Page16(),
      );
    case MobileRoutes.pg17:
      return FadeRoute(
        page: const Page17(),
      );
    case MobileRoutes.pg18:
      return FadeRoute(
        page: const Page18(),
      );
    case MobileRoutes.pg19:
      return FadeRoute(
        page: const Page19(),
      );
    case MobileRoutes.pg20:
      return FadeRoute(
        page: const Page20(),
      );

    /// Mobile 21 - 40
    case MobileRoutes.pg21:
      return FadeRoute(
        page: const Page21(),
      );

    case MobileRoutes.pg24:
      return FadeRoute(
        page: const Page24(),
      );

    case MobileRoutes.pg25:
      return FadeRoute(
        page: const Page25(),
      );

    case MobileRoutes.pg26:
      return FadeRoute(
        page: const Page26(),
      );

    case MobileRoutes.pg27:
      return FadeRoute(
        page: const Page27(),
      );

    case MobileRoutes.pg28:
      return FadeRoute(
        page: const Page28(),
      );

    case MobileRoutes.pg29:
      return FadeRoute(
        page: const Page29(),
      );

    case MobileRoutes.pg33:
      return FadeRoute(
        page: const Page33(),
      );

    case MobileRoutes.pg32:
      return FadeRoute(
        page: const Page32(),
      );

    case MobileRoutes.pg34:
      return FadeRoute(
        page: const Page34(),
      );

    /// Mobile 41 - 60
    case MobileRoutes.pg42:
      return FadeRoute(
        page: const Page42(),
      );
    case MobileRoutes.pg44:
      return FadeRoute(
        page: const Page44(),
      );
    case MobileRoutes.pg45:
      return FadeRoute(
        page: const Page45(),
      );
    case MobileRoutes.pg48:
      return FadeRoute(
        page: const Page48(),
      );
    case MobileRoutes.pg49:
      return FadeRoute(
        page: const Page49(),
      );
    case MobileRoutes.pg51:
      return FadeRoute(
        page: const Page51(),
      );
    case MobileRoutes.pg52:
      return FadeRoute(
        page: const Page52(),
      );
  }
};
