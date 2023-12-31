import 'package:daily_routine_app/utils/app_routes.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:daily_routine_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/local/storage.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  StorageRepository.getInstance();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
      return MaterialApp(
        color: AppColors.c1C1243,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splashScreen,
      onGenerateRoute: AppRoutes.generateRoute,
      );
    },
    );
  }
}
