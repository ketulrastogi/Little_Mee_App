import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/ui/setup_dialog_ui.dart';
import 'package:little_mee/ui/setup_snackbar_ui.dart';

import 'app/locator.dart';
import 'app/routes.gr.dart' as auto_router;
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  setupDialogUi();
  setupSnackbarUi();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Little Mee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        primaryColorDark: Colors.lightBlue,
        // accentColor: Colors.orange,
        // primarySwatch: Colors.purple,
        // brightness: Brightness.dark,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Headline',
          ),
        ),
        // textTheme: textTheme,
      ),
      darkTheme: ThemeData(
        primaryColorDark: Colors.red,
        // accentColor: Colors.orange,
        // primarySwatch: Colors.purple,
        // brightness: Brightness.dark,
        // textTheme: textTheme,
      ),

      navigatorKey: locator<NavigationService>().navigatorKey,
      initialRoute: auto_router.Routes.rootViewRoute,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      // home: LocationRequestView(),
    );
  }
}
