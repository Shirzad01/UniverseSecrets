import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Animations.dart';

class MilkyWay extends StatefulWidget {
  MilkyWay({Key? key}) : super(key: key);

  @override
  State<MilkyWay> createState() => _MilkyWayState();
}

class _MilkyWayState extends State<MilkyWay> with TickerProviderStateMixin {
  int activeIndex = 0;
  final controller = CarouselController();
  final images = [
    'assets/Milky-way.jpg',
    'assets/milky.jpg',
    'assets/milky Way.jpg',
    'assets/milky-Way1.jpg',
    'assets/milkyway.jpg',
    'assets/milkyway2.jpg',
    'assets/milkyway3.jpg',
    'assets/milkyway4.jpg',
    'assets/milkyway5.jpg',
    'assets/milkyWayjpg.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("کهکشان راه شیری"),
        ),
        body: Scrollbar(
          child: Stack(
            children: [
              const Positioned.fill(child: DrawerAnimation()),
              Scrollbar(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
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
                                autoPlayAnimationDuration:
                                    const Duration(seconds: 2),
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) =>
                                    setState(() => activeIndex = index))),
                        const SizedBox(height: 12),
                        buildIndicator(),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "کهکشان راه شیری (Milky Way) که به عنوان خانهٔ ما در کهکشان‌شناسی شناخته می‌شود، یک کهکشان مارپیچی بزرگ است. در ادامه، به برخی اطلاعات مربوط به کهکشان راه شیری می‌پردازم: \n 1. موقعیت: کهکشان راه شیری در جهت صورت فلکی قرار دارد و از طریق زمینهٔ آسمانی به شکل ناشیانه‌ای قابل رویت است. این کهکشان در نزدیکی مرکز جهان قرار دارد. \n 2. ساختار: کهکشان راه شیری به صورت یک دیسک مارپیچی شکل شده است که در آن بزرگ‌ترین قسمت شکل گرفته و به نام بولب مرکزی (galactic bulge) مشهور است. علاوه بر این، دسته‌هایی از ستارگان به نام بازوهای کهکشانی (galactic arms) در سراسر دیسک قرار گرفته‌اند. بازوهای کهکشانی شامل ستارگان، میان‌ستارگان، گرداب‌ها و مناطق تولید ستاره‌ای فعال هستند. \n 3. اندازه و جرم: قطر تقریبی کهکشان راه شیری حدود ۱۰۰ هزار سال نوری است، که به معنای این است که نور ۱۰۰ هزار سال طول می‌کشد تا از یک سر به سر دیگر کهکشان سفر کند. جرم کهکشان راه شیری نیز به تخمین می‌رسد حدود ۱.۵ تا ۲.۵ تریلیون جرم خورشیدی باشد. \n 4. سامانهٔ خورشیدی: سیستم خورشیدی ما نیز در کهکشان راه شیری قرار دارد. خورشید، که مرکز سیستم خورشیدی است، در برجستگی‌های بازوهای کهکشانی در دیسک کهکشان قرار دارد. این سامانه شامل سیارات، قمرها، کمترین ستارگان و اجرام دیگری است. \n 5. ابرهای مولکولی: در راه شیری، ابرهای مولکولی وجود دارند که از گاز و گرد و غبار تشکیل شده‌اند. این ابرها محل تولید ستاره‌ها و سیستم‌های سیاره‌ای جدید هستند. ابرهای مولکولی می‌توانند به عنوان مراحل اولیه در تشکیل ستاره‌ها و سیاره‌ها نقش داشته باشند. \n 6. مسیرهای آسمانی: راه شیری از نظر مشاهده‌گران زمینی، در طول شبانه‌روز می‌تواند به عنوان مسیری برای شناسایی ستارگان و اجسام آسمانی مورد استفاده قرار گیرد. مسیرهایی مانند راه شیری می‌توانند به عنوان نقطه‌ای مشخص در آسمان استفاده شوند تا اجسامی مانند کهکشان‌ها، ستاره‌ها و ماه‌ها را مشاهده کنیم.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                          ),
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
        effect: const ExpandingDotsEffect(
            dotWidth: 15, activeDotColor: Colors.blue),
        activeIndex: activeIndex,
        count: images.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String images, int index) =>
    Container(child: Image.asset(images, fit: BoxFit.cover));
