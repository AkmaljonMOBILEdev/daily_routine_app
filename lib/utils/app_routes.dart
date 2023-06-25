import 'package:daily_routine_app/ui/calendar_screen/calendar_screen.dart';
import 'package:daily_routine_app/ui/home_screen/home_screen.dart';
import 'package:daily_routine_app/ui/onboarding_screens/auth_screens/log_in_screen.dart';
import 'package:daily_routine_app/ui/onboarding_screens/auth_screens/sign_up_screen.dart';
import 'package:daily_routine_app/ui/onboarding_screens/splash_screen/splash_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/change_password_screen/change_password_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/settings_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/terms_of_privacy_screen/terms_screen.dart';
import 'package:daily_routine_app/ui/tag_box.dart';
import 'package:daily_routine_app/ui/task_screen/create_task_screen/create_task_screen.dart';
import 'package:daily_routine_app/ui/task_screen/task_screen.dart';
import 'package:flutter/material.dart';
import '../ui/onboarding_screens/welcome_screen/welcome_screen.dart';

class RouteNames{
  static const String splashScreen='/';
  static const String tagBox='/tag_box_screen';
  static const String logInScreen='/login_screen';
  static const String signUpScreen='/sign_up_screen';
  static const String welcomeScreen='/welcome_screen';
  static const String homeScreen='/home_screen';
  static const String taskScreen='/task_screen';
  static const String createTaskScreen='/create_task_screen';
  static const String calendarScreen='/calendar_screen';
  static const String settingsScreen='/settings_screen';
  static const String editProfileScreen='/edit_profile_screen';
  static const String changePasswordScreen='/change_password_screen';
  static const String termsOfServicesScreen='/terms_of_services_screen';
}
class AppRoutes{

  static Route generateRoute(RouteSettings settings){
    switch (settings.name){
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context)=>const SplashScreen());
      case RouteNames.tagBox:
        return MaterialPageRoute(builder: (context)=>const TagBox());
      case RouteNames.logInScreen:
        return MaterialPageRoute(builder: (context)=>const LogInScreen());
      case RouteNames.signUpScreen:
        return MaterialPageRoute(builder: (context)=>const SignUpScreen());
      case RouteNames.welcomeScreen:
        return MaterialPageRoute(builder: (context)=>const WelcomeScreen());
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context)=>const HomeScreen());
      case RouteNames.taskScreen:
        return MaterialPageRoute(builder: (context)=>const TaskScreen());
      case RouteNames.createTaskScreen:
        return MaterialPageRoute(builder: (context)=>const CreateTaskScreen());
      case RouteNames.calendarScreen:
        return MaterialPageRoute(builder: (context)=>const CalendarScreen());
      case RouteNames.settingsScreen:
        return MaterialPageRoute(builder: (context)=>const SettingsScreen());
      case RouteNames.editProfileScreen:
        return MaterialPageRoute(builder: (context)=>const EditProfileScreen());
      case RouteNames.changePasswordScreen:
        return MaterialPageRoute(builder: (context)=>const ChangePasswordScreen());
      case RouteNames.termsOfServicesScreen:
        return MaterialPageRoute(builder: (context)=>const TermsOfServiceScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No route'),),
          );
        });

    }
  }
}