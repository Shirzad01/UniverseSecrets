import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'Videos/Videos.dart';
import 'favorite_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectedIndex = 0;
final tabPage = <Widget>[const HomeScreen(), const Favorite(), const InstagramHomePage()];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (selectedIndex != 0) {
          setState(() {
            selectedIndex = 0; // برگرداندن به صفحه اول
          });
          return false; // خروج از برنامه را متوقف کنید
        }
        else {
          // نمایش دیالوگ خروج
          bool? exit = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.deepPurple,
              title: const Text('خروج از برنامه:',style: TextStyle(color: Colors.white),textAlign: TextAlign.right,textDirection: TextDirection.rtl,),
              content: const Text('آیا مطمئن هستید که می‌خواهید از برنامه خارج شوید؟',style: TextStyle(color: Colors.white),),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Container(
                      height: 30,
                      width: 70,
                      decoration:  BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(color: Colors.black12,blurRadius: 1),
                          ]
                      ),
                      child: const Text('     لغو',style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Container(
                    height: 30,
                      width: 70,
                      decoration:  BoxDecoration(
                          color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.black12,blurRadius: 1),
                        ]
                      ),
                      child: const Text('     تایید',style: TextStyle(color: Colors.white,fontSize: 20,),)),
                ),
              ],
            ),
          );
          return exit ?? false; // اگر کاربر بله را انتخاب کند، خروج انجام شود
        }
    },
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.deepPurpleAccent.shade700,
          buttonBackgroundColor: Colors.deepPurple.shade700,
          backgroundColor: Colors.deepPurple.shade700,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.decelerate,
          height: 70,
          index: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            Icon(Icons.textsms_outlined, color: Colors.white),
            Icon(Icons.favorite_border, color: Colors.white),
            Icon(Icons.slow_motion_video_outlined, color: Colors.white),
          ],
        ),
        body: tabPage[selectedIndex],
      ),
    );
  }
}
