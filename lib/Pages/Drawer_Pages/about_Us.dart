import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset("assets/finalVideo1717703933990.mp4")
          ..initialize().then((_) {
            setState(() {}); // when your video has been loaded, call setState
          })
          ..setLooping(true) //// loop the video
          ..setVolume(0.0)
          ..play(); // play the video
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: _maxHeaderHeight,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final top = constraints.biggest.height;
                final percent = (top - kToolbarHeight) /
                    (_maxHeaderHeight - kToolbarHeight);
                final profileImageSize = (_maxProfileHeight * percent).clamp(
                  _minProfileHeight,
                  _maxProfileHeight,
                );
                final backgroundOpacity = percent.clamp(0.0, 1.0);
                return FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(
                      left: 52, bottom: 3), // Adjust padding as needed
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Hero(
                          tag: 'profile-image',
                          child: CircleAvatar(
                            backgroundImage:
                                const AssetImage("assets/openart-95c4805edbf247b79d746306a5465631_raw.jpg"),
                            radius: profileImageSize,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Opacity(
                        opacity: percent.clamp(1, 1.0),
                        child: const Text(
                          "Haroon Shirzad",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              backgroundColor: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (_controller.value.isInitialized)
                        Opacity(
                          opacity: backgroundOpacity,
                          child: VideoPlayer(_controller),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 20),
                          child: const Text(
                            "من یک فرد علاقمند به کیهان و نجوم هستم و این برنامه را به صورت مستقل ایجاد کرده‌ام. با اشتیاق و انگیزه، این برنامه را برای به اشتراک گذاشتن اطلاعات علمی و شگفتی‌های کیهان با جامعه طراحی کرده‌ام.\n هدف من در این برنامه، آموزش و آگاهی بخشیدن به کاربران درباره آخرین کشف‌ها، نجومی‌ها، سیارات و پدیده‌های فراکیهانی است. تمامی محتوا و اطلاعات ارائه شده در برنامه توسط من مورد بررسی دقیق و تأیید علمی قرار می‌گیرد.\nاگر در جستجوی پاسخ به سوالاتتان درباره کیهان، سیارات، ستارگان و سایر مسائل فضایی هستید، برنامه من بهترین منبع برای شماست. با استفاده از برنامه، می‌توانید به دنیای شگفت‌انگیز نجوم و کیهان وارد شوید و از جذابیت‌ها و رمزهای آن بیشتر بفهمید.\nمن امیدوارم که برنامه (آشنایی با رموز کیهان)  برای شما لحظاتی پر از آموزش و سرگرمی فراهم کند و به شما کمک کند تا به اطلاعات جدیدی درباره کیهان و نجوم دست پیدا کنید. از حمایت شما سپاسگزاریم و همیشه به دنبال بهبود و ارتقاء برنامه خود هستم.\n  همچنین، اگر سوال یا نیاز به راهنمایی درباره نجوم دارید، من آماده پاسخگویی به شما هستم.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 20),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        const Text(
                          "توسعه دهنده برنامه:",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        const Text(
                          "\n Mohammad Haroon Shirzad \nمحمد هارون شیرزاد",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Text("")
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

const _maxHeaderHeight = 300.0;
const _maxProfileHeight = 50.0;
const _minProfileHeight = 30.0;

