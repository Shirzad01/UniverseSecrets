import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Animations.dart';

class Animation1 extends PageRouteBuilder {
  final Widget page;

  Animation1(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.fastOutSlowIn,
      );
      return ScaleTransition(
        scale: curvedAnimation,
        alignment: Alignment.centerLeft,
        child: child,
      );
    },
  );
}

class SolarSystem extends StatefulWidget {
  const SolarSystem({super.key});

  @override
  State<SolarSystem> createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem> {
  int activeIndex = 0;
  final controller = CarouselController();
  final images = [
    'assets/solar-orbits-hero.jpg',
    'assets/sun.jpg',
    'assets/atarud.jpeg',
    'assets/zuhra.jpg',
   'assets/Create_the_earth_planet_on_the_space.png',
    'assets/Mars.jpg',
    'assets/jupeter.jpg',
    'assets/zuhal.jpg',
    'assets/uranus.jpg',
    'assets/nepton.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("منظومه شمسی"),
      ),
      body: SafeArea(
        child: Stack(
           children: [
             const Positioned.fill(child: DrawerAnimation()),
             Scrollbar(
               child: SingleChildScrollView(
                 child: Center(
                   child: Column(
                     children: [
                       const SizedBox(height: 10,),
                       CarouselSlider.builder(
                           carouselController: controller,
                           itemCount: images.length,
                           itemBuilder: (context, index, realIndex) {
                             final urlImage = images[index];
                             return buildImage(urlImage, index);
                           },
                           options: CarouselOptions(
                               height: 200,
                               autoPlay: true,
                               enableInfiniteScroll: false,
                               autoPlayAnimationDuration: const Duration(seconds: 2),
                               enlargeCenterPage: true,
                               onPageChanged: (index, reason) =>
                                   setState(() => activeIndex = index))),
                       const SizedBox(height: 12),
                       buildIndicator(),
                       SizedBox(height: MediaQuery.of(context).size.width /20,),
                       const Padding(
                         padding: EdgeInsets.all(15.0),
                         child: Text("منظومه شمسی در بخشی از کهکشان راه شیری قرار دارد که بازوی اورین نام دارد. این بازو، یکی از بازوهای بزرگ راه شیری است و شامل تعداد زیادی ستاره و سیاره است. خورشید، که مرکز منظومه شمسی است، در این بازو قرار دارد و سیارات به دور آن می‌چرخند.\n و همچنان منظومه شمسی، سامانه‌ای است که در آن خورشید، ستاره مرکزی، و اجسام سیاره‌ای که به دور آن می‌چرخند، قرار دارند. این سامانه شامل خورشید، هشت سیاره (عبارتند از عطارد، زهره، زمین، مریخ، مشتری، زحل، اورانوس، نپتون، سیاره پنجم بزرگترین، و سیاره اول کوچکترین)، ماه‌ها، کهکشان‌ها، تلسکوپ‌ها، مواد میان ستاره‌ای و سایر اجسام هسته‌ای است. \n در ادامه به برخی اطلاعات مهم درباره منظومه شمسی می‌پردازم: \n 1. خورشید: خورشید، ستاره مرکزی منظومه شمسی است. این ستاره به طور متوسط قطری برابر با 1.4 میلیون کیلومتر دارد و بیش از 99.8 درصد جرم کلی منظومه شمسی را تشکیل می‌دهد. خورشید، منبع اصلی انرژی برای سیستم سیاره‌ای ماست. \n 2. سیارات: منظومه شمسی شامل هشت سیاره اصلی است. از داخل به بیرون، سیارات به ترتیب زیرند: مریخ، زهره، زمین، ماه، مشتری، اورانوس، نپتون و سیارهٔ بزرگترین، یعنی زحل. هر سیاره خصوصیات، جرم و اندازهٔ منحصر به فردی دارد. \n 3. قمرها: بسیاری از سیارات منظومه شمسی دارای قمرها هستند. قمرها، اجسام سنگی یا یخی هستند که به دور سیارات در حرکت می‌باشند. برخی از معروف‌ترین قمرها عبارتند از: ماه (قمر زمین)، تایتان (قمر زحل) و گانیمید (قمر مشتری). \n 4. سیارک‌ها: سیارک‌ها یا سیارات کوچک، اجسام کوچکتری هستند که در مدار خورشید واقع شده‌اند. بیش از ۷۰۰ هزار سیارک در منظومه شمسی شناسایی شده‌اند، و برخی از آنها به نام خاصیت خود معروف هستند؛ مانند سرامیک، وستا و سرزمین. \n 5. مهره‌های کوچک: علاوه بر سیارک‌ها، هزاران مهرهٔ کوچکتر نیز در منظومه شمسی وجود دارند. این مهره‌ها ممکن است شامل آستروئیدها، کمترین سیارک‌ها و اجسام کوچک دیگر باشند. \n 6. حرکت منظومه شمسی: زمانی که منظومه شمسی یک دور کامل به دور مرکز کهکشان بزند& به آن (سال کهکشانی) و یا (سال گالاکتیک) میگویند. \n متوسط زمانی که منظومه شمسی برای یک دور کامل به دور مرکز کهکشان ماهیته کهکشانی (Milky Way) نیاز دارد، تقریباً ۲۲۵-۲۵۰ میلیون سال است. این مقدار تخمینی است و ممکن است در حقیقت یکم بیشتر یا کمتر باشد. \n  در طول این دوره زمانی، منظومه شمسی به همراه سایر ستارگان در کهکشان ماهیته کهکشانی حرکت می‌کند. این حرکت شامل حرکت در صفحه کهکشانی و حرکت عمود بر صفحه کهکشانی (عمود بر صفحه دیسک کهکشان) است. همچنین، منظومه شمسی نیز حرکتی دورانی دارد که باعث تغییر جهت حرکت نسبت به سایر ستارگان در کهکشان ماهیته کهکشانی می‌شود. ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
           ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: const ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: images.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String images, int index) =>
    Image.asset(images, fit: BoxFit.cover);
