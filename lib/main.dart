import 'package:daily_routine_app/utils/app_routes.dart';
import 'package:daily_routine_app/utils/theme.dart';
import 'package:flutter/material.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.tagBox,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
