// class NavigationService {
//   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//
//   Future<dynamic> to({required String routeName}) {
//     return navigatorKey.currentState!.pushNamed(routeName);
//   }
//
//   void back() {
//     return navigatorKey.currentState!.pop();
//   }
//
//   Future<dynamic> clearAllTo({required String routeName}) {
//     return navigatorKey.currentState!
//         .pushNamedAndRemoveUntil(routeName, (route) => false);
//   }
// }
