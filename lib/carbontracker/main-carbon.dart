import 'package:flutter/material.dart';
import 'package:greenlivinghub/carbontracker/screens/calculator.dart';
import 'package:greenlivinghub/carbontracker/screens/home_navigator.dart';
import 'package:greenlivinghub/carbontracker/service/shared_preferences_service.dart';
import 'package:greenlivinghub/carbontracker/theme/constants/colors.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

/// Uncomment this function only if you want to run CarbonSense separately
/*
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceService.init();

  runApp(const CarbonSenseApp());
}
*/

class CarbonSenseApp extends StatelessWidget {
  const CarbonSenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        colorSchemeSeed: kDarkGreen,
        useMaterial3: true,
        sliderTheme: const SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
        ),
      ),
      home: Navigator(
        key: navigatorKey,
        initialRoute: "/",
        onGenerateRoute: (settings) {
          if (settings.name == "h") {
            return MaterialPageRoute(
              builder: (_) => const HomeNavigator(),
            );
          }
          return MaterialPageRoute(
            builder: (_) => SharedPreferenceService.firstTimeOpeningApp
                ? const Calculator()
                : const HomeNavigator(),
          );
        },
      ),
    );
  }
}
