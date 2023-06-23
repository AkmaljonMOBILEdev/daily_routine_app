import 'package:daily_routine_app/ui/calendar_screen/calendar_screen.dart';
import 'package:daily_routine_app/ui/home_screen/home_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/settings_screen.dart';
import 'package:daily_routine_app/ui/task_screen/task_screen.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:flutter/material.dart';

class TagBox extends StatefulWidget {
  const TagBox({super.key});

  @override
  State<TagBox> createState() => _TagBoxState();
}

class _TagBoxState extends State<TagBox> {
  int currentIndex=0;
  List<Widget> screens=[];
  @override
  void initState() {
    screens.addAll( const [
      HomeScreen(),
      TaskScreen(),
      CalendarScreen(),
      SettingsScreen()
      ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar:  Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
              backgroundColor: AppColors.c1C1243,
              selectedItemColor: AppColors.cFF8A00,
              unselectedItemColor: AppColors.cEFF1F3,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: (index){
              setState(() {
                currentIndex=index;
              });
              },
              selectedFontSize: 16,
              unselectedFontSize: 16,
              items: [
                getIcon('Home', Icons.home),
                getIcon('Tasks', Icons.list_alt),
                getIcon('Calendar', Icons.calendar_month),
                getIcon('Settings', Icons.settings)

              ],


        ),
      ),

    );
  }

  BottomNavigationBarItem getIcon(String label, IconData icon){
    return BottomNavigationBarItem(
        label: label,
        icon: Icon(icon, ));
  }
}
