import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'animation.dart';
import 'customSearchDelegate.dart';
import 'Pages/Drawer_Pages/about_Us.dart';
import 'Pages/earth.dart';
import 'Pages/jupeter.dart';
import 'Pages/mars.dart';
import 'Pages/milky-way.dart';
import 'Pages/neptun.dart';
import 'Pages/sun.dart';
import 'Pages/uranos.dart';
import 'Pages/zuhal.dart';
import 'Pages/mercure.dart';
import 'Pages/solarSystem.dart';
import 'Pages/spaceInfo.dart';
import 'Pages/venus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool customIcon = false;
  List<bool> selectedItems = List.generate(12, (index) => false);
  List<bool> selectedColor = List.generate(12, (index) => false);
  bool isLoading = false;
  Widget? selectedPages;
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'کیهان(جهان)',
      'کهکشان راه شیری',
      'منظومه شمسی',
      'خورشید',
      'عطارد',
      'زهره',
      'زمین',
      'مریخ',
      'مشتری',
      'زحل',
      'اورانوس',
      'نپتون',
    ];
    List<String> images = [
      'assets/image.jpg',
      'assets/Milky-way.jpg',
      'assets/solar-orbits-hero.jpg',
      'assets/sun.jpg',
      'assets/atarud.jpeg',
      'assets/zuhra.jpg',
      'assets/Create_the_earth_planet_on_the_space.png',
      'assets/Mars.jpg',
      'assets/jupeter.jpg',
      'assets/zuhal.jpg',
      'assets/uranus.jpg',
      'assets/nepton.jpg',
    ];
    List pages = [
      const SpaceInfo(),
      const MilkyWay(),
      const SolarSystem(),
      const Sun(),
      const Mercure(),
      const venus(),
      const Earth(),
      const Mars(),
      const Jupeter(),
      const Saturn(),
      const Uranos(),
      const Neptun(),
    ];
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
          child: Stack(children: [
         const Positioned.fill(child: DrawerAnimation()),
        ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPictureSize: const Size.fromRadius(40),
              accountName: const Text(
                "",
                style: TextStyle(fontSize: 1),
              ),
              accountEmail: Container(
                  decoration: const BoxDecoration(),
                  height: 30,
                  width: 300,
                  child: const Center(
                      child: Text(
                    "",
                    style: TextStyle(fontSize: 22),
                  ))),
              currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 38,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/drawerPictures1.jpg",
                        fit: BoxFit.cover,
                        width: 120,
                      ),
                    ),
                  )),
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(
                      image: AssetImage("assets/drawerPicture.jpeg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      colors: [Colors.black12, Colors.indigo]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 1, blurRadius: 1)
                  ]),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                },
                trailing: const Icon(
                  Icons.account_box_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  "درباره ما",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      colors: [Colors.black12, Colors.indigoAccent]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 1, blurRadius: 1)
                  ]),
              child: ListTile(
                trailing: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: const Text(
                  "تنظیمات",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.indigo,
                          title: const Center(
                              child: Text(
                            "  به زودی...!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textDirection: TextDirection.rtl,
                          )),
                          content: Container(
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "تائید",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 23),
                                )),
                          ),
                          shadowColor: Colors.deepPurple,
                        );
                      });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      colors: [Colors.black12, Colors.indigo]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 1, blurRadius: 1)
                  ]),
              child: ListTile(
                trailing: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                title: const Text(
                  "به اشتراک گذاری",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.indigo,
                          title: const Center(
                              child: Text(
                            "  به زودی...!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textDirection: TextDirection.rtl,
                          )),
                          content: Container(
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "تائید",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 23),
                                )),
                          ),
                          shadowColor: Colors.deepPurple,
                        );
                      });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      colors: [Colors.black12, Colors.indigoAccent]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 1, blurRadius: 1)
                  ]),
              child: ExpansionTile(
                  trailing: Icon(
                    customIcon
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  onExpansionChanged: (bool expanded) {
                    setState(() {
                      customIcon = expanded;
                    });
                  },
                  expansionAnimationStyle:
                      AnimationStyle(curve: Curves.easeInOutSine),
                  iconColor: Colors.white,
                  title: const Text(
                    "تماس با ما",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 18,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/whatsApp.png"),
                            ),
                          ),
                          title: InkWell(
                            onTap: () {
                              launch("https://wa.me/+93767684451");
                            },
                            child: const Text("0767684451",
                                style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 18,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/facebook.png"),
                        ),
                      ),
                      title: InkWell(
                          onTap: () {
                            launch(
                                "https://www.facebook.com/profile.php?id=100090313382122");
                          },
                          child: const Text(
                            "Haroon Shirzad",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          )),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 18,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/gmail.png"),
                        ),
                      ),
                      title: InkWell(
                          onTap: () {},
                          child: const Text(
                            "shirzadharoon07@gmail.com",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
      ])),
      appBar: AppBar(
        title: const Text("صفحه اصلی"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CutomSearchDelegate());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: selectedPages ??
          SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: const AssetImage("assets/HD-wallpaper.jpg"),
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.40),
                    BlendMode.dstATop,
                  ),
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.deepPurpleAccent,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: AnimationLimiter(
                        child: ListView.builder(
                            padding: const EdgeInsets.all(20),
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return AnimationConfiguration.staggeredList(
                                position: index,
                                child: SlideAnimation(
                                  duration: const Duration(milliseconds: 900),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  verticalOffset: -200,
                                  child: Container(
                                      margin: EdgeInsets.only(bottom: w / 20),
                                      height: w / 5,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.black38,
                                              Colors.deepPurple,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          color: const Color.fromRGBO(
                                              0, 0, 255, 1.0),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 40,
                                              spreadRadius: 10,
                                            )
                                          ]),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Expanded(
                                            child: ListTile(
                                              onTap: () {
                                                Navigator.push(context,
                                                    Animation1(pages[index]));
                                              },
                                              leading: IconButton(
                                                color: selectedColor[index]
                                                    ? Colors.deepPurpleAccent
                                                    : Colors.deepPurple,
                                                icon: Icon(
                                                  selectedItems[index]
                                                      ? Icons.favorite
                                                      : Icons.favorite_border,
                                                  size: 28,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    selectedColor[index] =
                                                        !selectedColor[index];
                                                    selectedItems[index] =
                                                        !selectedItems[index];
                                                  });
                                                },
                                              ),
                                              trailing: CircleAvatar(
                                                radius: 25,
                                                backgroundImage:
                                                    AssetImage(images[index]),
                                              ),
                                              title: Text(
                                                items[index],
                                                style: const TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 21),
                                                textDirection:
                                                    TextDirection.rtl,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              );
                            })),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
