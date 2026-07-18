import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/core/di/service_locator.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await init();
  runApp(StylishApp());
}

class StylishApp extends StatelessWidget {
  const StylishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: AppName.home,
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final prefs = await SharedPreferences.getInstance();
//   await prefs.setString('test', 'hello');

//   runApp(
//     const MaterialApp(
//       home: Scaffold(body: Center(child: Text('OK'))),
//     ),
//   );
// }
