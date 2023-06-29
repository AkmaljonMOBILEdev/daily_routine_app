import 'package:daily_routine_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(
      context,
      RouteNames.welcomeScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
