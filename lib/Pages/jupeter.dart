import 'package:flutter/material.dart';

import '../animation.dart';
import 'animation.dart';


class Jupeter extends StatelessWidget {
  const Jupeter({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> images = [
      {"image": "assets/jupeter.jpg", "title": ""},
      {"image": "assets/jupeter6.jpg", "title": ""},
      {"image": "assets/jupeter2.jpg", "title": ""},
      {"image": "assets/jupeter3.jpg", "title": ""},
      {"image": "assets/jupeter4.jpg", "title": ""},
      {"image": "assets/jupeter5.jpg", "title": ""},
      {"image": "assets/Jupeter1.jpg", "title": ""},
      {"image": "assets/jupeter7.jpg", "title": ""},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'مشتری',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Stack(
         children: [
           const Positioned.fill(child: DrawerAnimation()),
           Scrollbar(
           radius: const Radius.circular(10),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   width: double.maxFinite,
                   height: 200,
                   padding: const EdgeInsets.all(10),
                   child: CustomCarousel(
                     visible: 3,
                     borderRadius: 20,
                     slideAnimationDuration: 500,
                     titleFadeAnimationDuration: 300,
                     children: images,
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("سیاره مشتری (Jupiter)، پنجمین سیاره منظومه شمسی و بزرگترین و غول پیکرترین سیاره است. مُشتَری به نام‌های بِرجیس، اورمزد، زاوش یا هُرمُز نیز شناخته می‌شود. در ادامه با این سیاره آشنا می شوید.\n مشتری، غول گازی با جرم یک هزارم خورشید است، ولی جرمی دو و نیم برابر تمامی دیگر سیاره‌های سامانهٔ خورشیدی دارد و دومین جسم در سامانهٔ خورشیدی بر پایهٔ جرم و حجم است. از نظر دوری از خورشید، مشتری پنجمین سیاره پس از عطارد، زهره، زمین و مریخ است.\n مشتری دارای ۷۹ قمر شناخته شده‌است که ۱۶ ماه آن قطری بیش از ۱۰ کیلومتر دارند. چهار ماه از بزرگترین ماه‌های مشتری به ترتیب دوری از این سیاره عبارتند از: آیو، اروپا، گانیمد و کالیستو. این چهار ماهک را ماه‌های گالیله‌ای می‌نامند. زیرا ستاره‌شناس ایتالیایی گالیلئو گالیله آن‌ها را در سال ۱۶۱۰ به وسیله نخستین تلسکوپ پیدا کرد.\n در۶ دسامبر ۱۹۹۵، فضاپیمای گالیله متعلق به ناسا به مشتری رسید و نخستین گردش خود از ۳۵ گردش دور سیاره را آغاز کرد. در بیشتر از هفت سال، این فضاپیما ۱۴۰۰۰ تصویر از مشتری و ماه‌ها و حلقه‌های آن گرفت.\n در ۲۱ سپتامبر ۲۰۰۳ فضاپیمای گالیله در یک فرود قابل کنترل قرار داده شد تا مأموریت خود را با سقوط در جو مشتری پایان دهد. علاوه بر ابزارهای عکسبرداری، فضاپیما یک آشکارساز غبار بسیار حساس حمل می‌کرد که هزاران برخورد از ذرات غبار مسیر خود به سوی حلقه مشتری در سال‌های ۲۰۰۲ و ۲۰۰۳ را ثبت کرد. یکی از کشف‌های جدید فضاپیمای گالیله کشف ماه تبه بود.\n آیو دارای آتشفشان‌ های فعال بسیاری است. هر فوران گازی آن دارای گوگرد نیز هست. رنگ زرد نارنجی سطح آیو شاید از اندازه بسیار زیاد گوگرد جامد که در سطح سیاره انباشته شده حکایت دارد.\nاروپا کوچکترین ماه گالیله‌ای است که قطر آن برابر با ۳ هزار و ۱۳۰ کیلومتر است. اروپا دارای سطحی از یخ صاف و ترک خورده‌است.\n بزرگترین ماه گالیله‌ای، گانیمد با قطری برابر با ۵۲۶۸ کیلومتر است. گانیمد بزرگتر از سیاره تیر است. کالیستو با قطری برابر با ۴۸۰۶ کیلومتر اندکی کوچکتر از تیر است. گمان می‌رود کالیستو و گانیمد از یخ و اندکی مواد سنگی ساخته شده باشند.\n هر دو ماهک دارای دهانه‌های بسیاری هستند. دیگر ماهک‌های مشتری از ماهک‌های گالیله‌ای بسیار کوچکترند. آمالتئا و هیمالیا دو ماهک بزرگ بعدی هستند. امالیتا با قطری برابر با ۲۶۲ کیلومتر به شکل سیب زمینی است. قطر هیمالیا برابر با ۱۷۰ کیلومتر است. بیشتر ماه‌های به جای مانده مشتری با تلسکوپ‌های بزرگ زمینی پیدا شده‌اند. دانشمندان متیس و آدرستا را در سال ۱۹۷۹ با بررسی نگاره‌هائی که فضاپیمای وویجر گرفته بود پیدا کردند.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("مشخصات مشتری",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("مشتری چهارمین جسم درخشان در آسمان پس از خورشید، ماه و ناهید است. اگرچه گهگاه مریخ (بهرام) درخشان‌تر به‌نظر می‌آید. به کمک دوربین دوچشمی برخی ماه‌های هرمز نیز قابل دیدن می‌باشند.\n جرم مشتری ۲٫۵ بار از مجموع جرم دیگر سیاره‌های سامانه خورشیدی بیشتر است. جرم مشتری ۳۱۸ بار بیشتر از جرم زمین است. قطر آن ۱۱ برابر قطر زمین است. مشتری می‌تواند ۱۳۰۰ زمین را درخود جای دهد. میانگین دوری آن از خورشید در حدود ۷۷۸ میلیون و ۵۰۰ هزار کیلومتر است یعنی بیشتر از ۵ برابر دوری زمین از خورشید.\n ستاره‌شناسان با تلسکوپ‌های برپاشده در زمین و ماهوارههائی که در مدار زمین می‌گردند به بررسی مشتری می‌پردازند. ایالات متحده تا کنون ۶ فضاپیمای بدون سرنشین را به مشتری فرستاده‌است.\n در ژوئیه ۱۹۹۴، هنگامی که ۲۱ تکه از دنباله‌دار شومیکر-لوی ۹ با اتمسفر مشتری برخورد کرد ستاره‌شناسان شاهد رویدادی بسیار تماشایی بودند. این برخورد برانگیزاننده انفجارهای سهمناکی شد که پاره‌ای از آن‌ها قطری بزرگ‌تر از قطر زمین داشتند.\n ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("ویژگی های فیزیکی مشتری",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("جرم مشتری به تنهایی ۲٫۵ برابر جرم تمام سیاره‌های دیگر در سامانه خورشیدی است. نسبت جرم این سیاره به اندازه‌ای است که مرکز سنگینی سراسری آن با خورشید بالاتر از سطح خورشید، در ۱٫۰۶۸ برابر شعاع خورشید (فاصله از مرکز خورشید) قرار می‌گیرد.\n حجم مشتری ۱۳۲۱ برابر حجم زمین و جرم آن تنها ۳۱۸٫۵ برابر زمین است. این نسبت، زمین را به‌طور قابل توجهی متراکم تر از مشتری نشان می‌دهد. شعاع مشتری حدود یک دهم شعاع خورشید است و جرم آن ۰٫۰۰۱ برابر جرم خورشید است، بنابراین چگالی این دو با هم مشابه است.\n ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("دمای هوا در مشتری",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("دمای هوا در ابرهای بالایی مشتری در حدود ۱۴۵- درجهٔ سلسیوس است. اندازه‌گیری‌ها نشان می‌دهند که دمای مشتری با افزایش ژرفا در زیر ابرها افزایش می‌یابد. دمای هوا در سطحی که فشار اتمسفر ۱۰ برابر زمین است، به ۲۱ درجه سانتی‌گراد می‌رسد.\n دانشمندان می‌اندیشند که اگر مشتری دارای گونه‌ای از حیات باشد، حیات در این سطح پا خواهد گرفت. چنین حیاتی در گاز خواهد بود. زیرا در این سطح هیچ بخش جامدی وجود ندارد. دانشمندان تا کنون هیچ گواهی از حیات بر روی مشتری نیافته‌اند.\n نزدیک مرکز سیاره دما بسیار بیشتر است. دمای هسته در حدود ۲۴ هزار درجه، یعنی داغ‌تر از سطح خورشید است. ستاره‌شناسان بر این باورند که خورشید، سیارات و دیگر جرم‌های سامانه خورشیدی از چرخش ابرهایی از گاز و غبار پا گرفته‌اند.\n گرانش گازی و ذرات غبار آن‌ها را به صورت ابرهای ستبر گوی مانند از مواد درآورد در حدود ۴٬۵ میلیارد سال پیش مواد به هم فشرده شدند تا اجسام بسیار سامانه خورشیدی پدید آمدند. فشردگی مواد ایجاد گرما نمود. گرمای بسیاری هنگامی که مشتری پا گرفت ایجاد شد.\n ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
               ],
             ),
           ),
         ),],
        ),
      ),
    );
  }
}


