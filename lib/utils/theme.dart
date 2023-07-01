import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';



class AppTheme{
  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.white,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark
          )
      ),
      textTheme: const TextTheme(
        //display
          displayLarge: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 57,
              fontWeight: FontWeight.w800,
              fontFamily: 'SF Pro Text'
          ),
          displayMedium: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 45,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text'
          ),
          displaySmall: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'
          ),
          //headline
          headlineLarge: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text'
          ),
          headlineMedium: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          headlineSmall: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Text'
          ),
          //title
          titleLarge: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text'
          ),
          titleMedium: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'
          ),
          titleSmall: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          //label
          labelLarge: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'
          ),
          labelMedium: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          labelSmall: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          //body
          bodyLarge: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          bodyMedium: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          bodySmall: TextStyle(
              color: AppColors.c1C1243,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          )

      )
  );

  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.c1C1243,
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //     backgroundColor: AppColors.c1C1243,
      //     selectedItemColor: AppColors.cFF8A00,
      //     unselectedItemColor: AppColors.c1C1243,
      //     showSelectedLabels: true,
      //     showUnselectedLabels: true,
      //
      // ),
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.c1C1243,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.c1C1243,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light
          )
      ),
      textTheme: const TextTheme(
        //display
          displayLarge: TextStyle(
              color: AppColors.white,
              fontSize: 57,
              fontWeight: FontWeight.w800,
              fontFamily: 'SF Pro Text'
          ),
          displayMedium: TextStyle(
              color: AppColors.white,
              fontSize: 45,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text'
          ),
          displaySmall: TextStyle(
              color: AppColors.white,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'
          ),
          //headline
          headlineLarge: TextStyle(
              color: AppColors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text'
          ),
          headlineMedium: TextStyle(
              color: AppColors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          headlineSmall: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Text'
          ),
          //title
          titleLarge: TextStyle(
              color: AppColors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text'
          ),
          titleMedium: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'
          ),
          titleSmall: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          //label
          labelLarge: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'
          ),
          labelMedium: TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          labelSmall: TextStyle(
              color: AppColors.white,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          //body
          bodyLarge: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          bodyMedium: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          ),
          bodySmall: TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Text'
          )

      )
  );
}