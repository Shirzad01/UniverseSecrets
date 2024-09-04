import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';
class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  SharedPreferences? _prefs;
  late  bool _showIntroduction = true;
  @override
  void initState() {
    super.initState();
    _initPreferences();
  }

  Future<void> _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _showIntroduction = _prefs?.getBool('showIntroduction') ?? true;
    });
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/openart-image_wwniUHTY_1714758069024_raw.jpg"),
        title: "خوش آمدید",
        body:
        " خوش آمدید به برنامهٔ (آشنایی با رموز کیهان) این برنامه امکان به اشتراک گذاری دانش و اکتشافات مربوط به کیهان و جهان  بزرگ را برای شما فراهم می‌کند",
      ),
      PageViewModel(
        image: Image.asset("assets/create the picture o.jpg",),
        body:
        "شما با ویژگی‌ها و قابلیت‌های منحصر به فرد این برنامه آشنا می‌شوید. این برنامه شامل مجموعه‌ای از اطلاعات جذاب، تصاویر شگفت‌انگیز، و ابزارهای کاربردی برای کاوش در مورد رموز کیهان و جهان است",
        title: "ارتباطات",
      ),
      PageViewModel(
        image: Image.asset("assets/openart-image_dc-mydaa_1714673844618_raw.jpg"),
        title: "شروع به کار",
        body:
        "برای کشف بیشتر و استفاده کامل از قابلیت‌های برنامه، همراه ما در این سفر هیجان انگیز به کاوش در رموز کیهان و جهان باشید",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _showIntroduction
            ? IntroductionScreen(
          done: Container(
              decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepPurpleAccent,
                        offset: Offset(2, 3),
                        blurRadius: 1,
                        spreadRadius: 1
                    )
                  ],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              child: const Text("      انجام     ", style: TextStyle(color: Colors.white,fontSize: 19))),
        onDone: () {
            _prefs?.setBool('showIntroduction', false);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          pages: getPages(),
          globalBackgroundColor: Colors.deepPurple,
          next: const Icon(Icons.arrow_forward,color: Colors.white,),
          back: const Icon(Icons.arrow_back),
        ) : const HomePage(),
      ),
    );
  }
}