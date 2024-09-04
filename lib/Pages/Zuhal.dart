import 'dart:ui';

import 'package:flutter/material.dart';

import '../Animations.dart';
import 'Animation.dart';


class Saturn extends StatelessWidget {
  const Saturn({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> images = [
      {"image": "assets/solar-venus.png", "title": ""},
      {"image": "assets/saturn.jpg", "title": ""},
      {"image": "assets/saturn1.jpg", "title": ""},
      {"image": "assets/saturn2.jpg", "title": ""},
      {"image": "assets/saturn4.jpg", "title": ""},
      {"image": "assets/saturn5.jpg", "title": ""},
      {"image": "assets/saturn6.jpg", "title": ""},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'زحل',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: Stack(
       children: [
         Positioned.fill(child: DrawerAnimation()),
         Scrollbar(
           radius: Radius.circular(10),
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
                   child: const Text("زحل یا کیوان (به انگلیسی :saturn)، بعد از سیارهٔ مشتری، دومین سیارهٔ بزرگ سامانه خورشیدی و ششمین سیارهٔ نزدیک به خورشید است. زحل یک گلولهٔ گازی غول‌پیکر است که با وجود حجم زیادش تنها ۹۵٫۱۵۹ برابر زمین جرم دارد. چگالی این سیاره حدود یک‌هشتم زمین و کمتر از آب است. یک روز کامل در زحل برابر ۱۰ ساعت و ۳۹ دقیقه در زمین و یک سال آن ۲۹٫۵ برابر سال زمین است. از آنجایی که مدار استوایی زحل تقریباً همانند زمین در ۲۷ درجه است، تغییرات زاویهٔ سیاره نسبت به خورشید شبیه به زمین است و در این سیاره نیز همان چهار فصل مشاهده می‌شود. جرم این سیارهٔ همانند مشتری از گاز است که بیشتر آن را هیدروژن تشکیل می‌دهد. میزان اندکی هلیوم و متان در رده‌های بعدی گازهای تشکیل‌دهندهٔ سیاره قرار دارند.\n  در آسمان شبِ زمین، زحل به دلیل اندازهٔ بزرگ، نسبتاً درخشان دیده می‌شود. زیبایی آسمان زحل به خاطر نوارهای روشن حلقه‌های اطراف آن و نیز به خاطر قمرهای زیادش است.\n به علت سرعت حرکت زحل به دور خود در قطب‌های آن نوعی حالت پخی مشاهده می‌شود که سیاره را از شکل کرهٔ کامل دور می‌کند. سیاره زحل از جنبه‌های زیادی شبیه هرمز است، جز اینکه در اطراف آن چندین حلقهٔ شگفت‌انگیز وجود دارد. زحل از دوران باستان شناخته شده و به عنوان خدای کشاورزی و ثروت در اساطیر روم نامیده شده است.\n ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("چرخش و مدار",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("زحل با فاصلهٔ ۹٫۵۳۹ واحد نجومی از خورشید و تناوب مداری ۲۹٫۵ سال، در مداری که با مدار زمین زاویه ۲٫۴۸ درجه می‌سازد، می‌گردد.\n از روی زمین قطر زاویه‌ای زحل در نقطهٔ مقابله حدود ۲۰ ثانیهٔ قوسی است. مانند مشتری، زحل دارای جو پر از ابری است که به صورت جزئی می‌چرخد. از مشاهدات انتقالات دوپلری در عرض سیاره و با زمان‌بندی دقیق علامت‌های جوی، دورهٔ تناوب چرخش نجومی آن، در نزدیک استوایش ۱۰ ساعت و ۱۴ دقیقه و در عرض‌های جفرافیایی بالا ۱۰ ساعت و ۳۸ دقیقه محاسبه شده‌است. در اینجا هم مجدداً چرخش جزئی مشابه مشتری داریم. استوای زحل به اندازهٔ ۲۶ درجه و ۴۵ دقیقه با صفحهٔ مداری آن زاویه می‌سازد، به‌طوری‌که قطب‌های سیاره در فاصله‌های زمانی حدود ۱۵ سال یک‌بار سمت زمین متمایل می‌شوند. چرخش باعث پخی زیاد (۹۶٪) زحل می‌گردد، به‌طوری‌که شعاع‌های قطبی و استوایی به نسبت ۱۰/۹ هستند. ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("ویژگی های فیزیکی",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("زحل کمی از مشتری کوچک‌تر است و جرم آن کمتر از جرم مشتری و در حدود ۹۵ برابر جرم زمین است. زحل سومین جسم در سامانهٔ خورشیدی بر پایهٔ جرم و حجم می‌باشد. زحل یک غول گازی است زیرا سطح آن به صورت کلی از گاز تشکیل شده‌است با اینکه ممکن است دارای یک هستهٔ جامد باشد.[۶] زحل کمترین چگالی میانگین را نسبت به سایر سیارات سامانه خورشیدی دارد. اگر بتوان زحل را در دریایی عظیم انداخت این سیاره بر روی آب شناور می‌ماند. اندازهٔ شعاع این سیاره در منطقه‌های استوایی با مقدار آن در قطب‌ها نزدیک به ۱۰٪ متفاوت است؛ ۶۰٫۲۶۸ کیلومتر در برابر ۵۴٫۳۶۴ کیلومتر.[۳] درون زحل احتمالاً ترکیب مشتری را دارد. برآوردهای نظری مقادیر حدود ۷۴٪ هیدروژن، ۲۴٪ هلیوم، ۲٪ عناصر سنگین‌تر را پیشنهاد می‌کند. این ترکیب تقریباً مشابه ترکیبات خورشید است. گمان می‌رود زحل دارای یک هستهٔ سنگین کوچک به قطر ۲۰ هزار کیلومتر و جرمی معادل ۲۰Mφ باشد.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("جو",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("ساختار جو زحل با کمربندهایی که به موازات استوا امتداد دارند، همانند مشتری است؛ هرچند آشفتگی‌های این کمربندها بسیار کمتر از مشتری است (تاکنون از روی زمین فقط ۱۰ لکه مشاهده شده‌اند). ترکیب جو زحل نیز شباهت زیادی با جو مشتری دارد. تاکنون متان (CH4)، آمونیاک (NH3)، اتان (C2H6)، فسفین (PH3)، استیلن (C2H2)، متیل استیل (C3H4)، پروپان (C3H8) و هیدروژن مولکولی (H2) آشکار شده‌است. لایه خارجی زحل دارای ۹۶٫۳٪ هیدروژن و ۳٫۲۵٪ هلیم می‌باشد. درصد المان‌های دیگر به صورت کامل مشخص نیست ولیکن تصور می‌شود درصد بسیار کمی از آنان وجود داشته باشد. ابرهای زحل خیلی کمرنگ تر از ابرهای مشتری به نظر می‌رسند. ابرهای مشتری اغلب به رنگ زرد کم‌رنگ و نارنجی هستند، به این دلیل که دما در زحل کمتر از مشتری است، ابرهای زحل در لایه پایین‌تری از جو آن قرار می‌گیرند.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("شش ضلعی قطب شمال",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("تصاویر فروسرخ جدید فضاپیمای کاسینی از زحل یکی از عجیب‌ترین عوارض سطح این سیاره را نمایان کرد. ساختار ابر مانند یک شش ضلعی که به دور نقطهٔ قطب شمال زحل در گردش است می‌باشد. این ساختار بیست سال پیش درگذر فضاپیمای وویجر از کنار زحل در درجه ۷۸ شمال کشف شده‌است. هر ضلع این شش ضلعی حدود ۱۳۰۰۰ کیلومتر است که از شعاع زمین بزرگتر است. از این رو این شش ضلعی به قدری بزرگ است که شش زمین در آن قابل جاسازی است. ساختار شش ضلعی هر ۱۰ ساعت و ۳۹ دقیقه و ۲۴ ثانیه یکبار می‌چرخد که تصور می‌شود این زمان زمان چرخش درون زحل باشد. علت تشکیل این ساختار برای محققان معلوم نیست ولیکن بیشتر آنان تصور می‌کنند این ساختار از برهمکنش موج و ماده ایجاد شده‌است. محققان موفق شدند در آزمایشگاه نیز ساختارهای هندسی به وسیله موج ایجاد کنند.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("قطب جنوب",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("در قطب جنوب زحل نیز یک ساختار چرخشی بزرگ وجود دارد. در سال ۲۰۰۶ ناسا اعلام کرد که فضاپیمای کاسینی یک طوفان بزرگ در قطب جنوب زحل دیده‌است که دارای ساختاری شبیه یک چشم است. اندازه این ساختار تقریباً دارای اندازه زمین است.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("قمرهای طبیعی",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("زحل بیشترین شمار قمر را در میان سیاره‌های سامانه خورشیدی دارد. این سیاره دارای ۸۳ قمر است که ۵۳ قمر از آن‌ها دارای نام‌های رسمی هستند و تیتان با قطر ۵۱۵۰ کیلومتر بزرگ‌ترین آنهاست. چهار قمر رئا، دیونه، تتیس و یاپتوس نیز قطرهایی بین ۱۰۵۰ کیلومتر و ۱۵۳۰ کیلومتر را دارا می‌باشند. قمر رئا دارای یک سیستم حلقه مجزا و اتمسفر خاص است. بیشتر قمرهای دیگر بسیار کوچک هستند و ۳۴ عدد از آن‌ها دارای قطر کمتر از ۱۰ کیلومتر می‌باشند. ۱۴ قمر دیگر دارای قطر بین ۱۰ تا ۵۰ کیلومتر هستند. همچنین، ۱۰۰±۳۰ قمر نامنظم دیگر با قطرهای بیش از ۳ کیلومتر (۲ مایل) در بخش بیرونی‌تر پیرامون این سیاره پراکنده‌اند. بیشتر نام‌های قمرهای زحل از نام‌های تیتان‌ها در اسطوره‌های یونان باستان اقتباس شده‌است. تیتان تنها قمر در تمامی منظومه شمسی است که دارای اتمسفر کافی برای وجود واکنش‌های شیمیایی می‌باشد. همچنین تیتان تنها قمر دارای دریاچه هیدروکربن است.\n در ۶ ژوئن ۲۰۱۳ دانشمندان موفق به کشف هیدروکربنهایی در قسمت بالای اتمسفر تیتان شدند که پیش زمینه حیات هستند. در ماه آوریل سال ۲۰۱۴ محققان ناسا اعلام کردند که یک قمر جدید در حال شکل‌گیری در حلقه آ زحل است.\n یکی از پدیده‌های خاص در قمرهای زحل، میان دو قمر جانوس و اپیمتئوس اتفاق می‌افتد این دو قمر در مداری تقریباً یکسان دور سیارهٔ زحل چرخش می‌کنند و هر چهار سال یکبار به یکدیگر بسیار نزدیک می‌شوند. در زمان نزدیک شدن، نیروی جاذبهٔ متقابل آن‌ها باعث می‌شود که مدار چرخش آن‌ها با یکدیگر جابه‌جا شود.\n ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("حلقه‌های سیاره‌ای",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("حلقه‌ها یا کمربندهای زحل در فاصله ۱۱۲۰۰ کیلومتری آن جای گرفته‌اند. حلقه‌های زحل، از تکه‌های یخ و همچنین تکه‌های سنگ و غبار تشکیل شده‌اند؛ برخی به اندازه یک غبار ریز و برخی به اندازه یک خانه. حلقه‌های زحل پهن هستند ولی بسیار تخت و نازک. پهنای آن‌ها ۲۸۰ هزار کیلومتر است اما ضخامت آن‌ها تنها یک کیلومتر است؛ بنابراین هنگامیکه از پهلو به زحل بنگریم حلقه‌ها تیغه باریکی می‌شوند و دیده نمی‌شوند. پهنای برخی از حلقه‌های زحل به اندازه فاصله زمین تا ماه می‌باشد. مشتری و نپتون و اورانوس هم حلقه دارند اما حلقه زحل از همه بهتر دیده می‌شود. به باور دانشمندان دلیل درخشان‌تر بودن حلقه‌های زحل، تازه‌تر بودن و جوان‌تر بودن آن هاست. آن‌ها می‌انگارند که این حلقه‌ها در پی نزدیک شدن یک قمر به زحل و فروپاشی آن قمر در اثر گرانش زحل پدید آمده‌اند. حلقه‌های زحل به ترتیبی که کشف شده‌اند با حروف الفبا نامگذاری شده‌اند. ای، بی، سی، دی، ای، اف و جی. در میان حلقه‌ها سه شکاف وجود دارد به نام‌های آنکه، کیلر و مکسول و یک بازه بزرگ به نام شکاف کاسینی.\n نخستین کسی که به حلقه رازآمیز پیرامون زحل علاقه‌مند شد و آن را کشف کرد گالیله بود. او در سال ۱۶۱۰ به این موضوع پی برد و در آغاز بر این باور بود که این حلقه از جنس جامد می‌باشد. اما امروزه ثابت شده‌است که این حلقه از قطعات سنگ و آب یخ زده تشکیل شده‌است که برخی از آن‌ها در اندازه‌های یک خودروی معمولی می‌باشند. مجموع گرانش (جاذبه) زحل و گرانش‌های آن حالتی را پدید می‌آورند که این قطعات همواره به صورت حلقه‌های نازک به دور این سیاره به نظر ثابت ایستاده‌اند.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("شکاف کاسینی",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("در سال ۱۶۷۵ میلادی (۱۰۵۴ خورشیدی) جووانی دومنیکو کاسینی، اخترشناس ایتالیایی، کشف کرد که حلقه زحل از دو حلقه تشکیل یافته‌است و میان آن دو جدایی وجود دارد. این جدایی شکاف کاسینی نامیده می‌شود و در اثر کشش گرانشی قمر غول پیکر تیتان به وجود آمده‌است. بررسی‌های واپسین نشان داده‌اند که در اطراف زحل، بر روی هم چهار حلقه وجود دارد. درونی‌ترین آن‌ها بسیار کم نور و تقریباً با بالای ابرها در تماس است. قطر حلقه نورانی بیرونی به ۱۴۰۰۰۰ کیلومتر می‌رسد. شکاف کاسینی ۴۷۰۰ کیلومتر پهنا دارد.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("میدان مغناطیسی",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text("میدان مغناطیسی دارای یک گشتاور کلی برابر ۳۵/۱ گشتاور مشتری است. اما این مقدار به حد کافی قوی است که یک میدان مغناطیسی سپهر مشتری گون با کمربندهای تابشی مشابه زمین ایجاد کند. گشتاور دوقطبی مغناطیسی با میل یک درجه نسبت به محور چرخش زحل قرار می‌گیرد که این مقدار با انحراف مشخص محورهای مغناطیسی مشتری و زمین تفاوت آشکار دارد. مغناط کرهٔ زحل ذرات بسیار کمتری از ذرات مغناط‌کرهٔ مشتری را در خود جای می‌دهد.\n دو دلیل عمده این تفاوت شامل کمبود یک منبع محلی ذرات باردار که در مورد مشتری توسط فوران‌های آیو تولید می‌شوند و حلقه‌های قابل رویت زحل که به‌طور مؤثری ذرات باردار را جذب کرده و مغناطیس‌سپهر داخلی را از ذرات باردار خالی می‌کنند، است. در خارج لبه حلقه‌ها چگالی ذرات باردار به سرعت افزایش می‌یابد و در حدود ۵Rs تا ۱۰Rs به یک قله می‌رسد. در اینجا، ذرات باردار به‌طور محکم به میدان مغناطیسی در حال دوران سریع جفت می‌شوند. این برهمکنش، لایه‌ای از پلاسما به ضخامت تقریباً ۲Rs ایجاد می‌کند که تا حدود ۱۵Rs ادامه می‌یابد. در ورای این مقدار، مغناط‌کره شکل خود را از دست می‌دهد. اندازه آن با دمای خورشید تغییر می‌یابد.",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
                 ),
               ],
             ),
           ),
         ),
       ],
      ),
    );
  }
}


