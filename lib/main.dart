import 'package:flutter/material.dart';
import 'package:practice_1/core/helper_functions/on_generate_routes.dart';
import 'package:practice_1/features/home/presentation/view/home_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([

  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      onGenerateRoute: onGenerateRoute,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const ProfileScreen(),
      //   ProjectScreen.screenRoute: (context) => ProjectScreen(),
      // },
    );
  }
}
