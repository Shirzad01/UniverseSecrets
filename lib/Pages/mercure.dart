import 'package:flutter/material.dart';
import '../animation.dart';
import 'animation.dart';


class Mercure extends StatelessWidget {
  const Mercure({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> images = [
      {"image": "assets/mercure1.png", "title": ""},
      {"image": "assets/mercure.png", "title": ""},
      {"image": "assets/mercure2.png", "title": ""},
      {"image": "assets/mercure3.png", "title": ""},
      {"image": "assets/mercure4.png", "title": ""},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'عطارد',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: Stack(
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
                     childClick: (int index) {
                       print("Clicked $index");
                     },
                     children: images,
                   ),
                 ),
                 const SizedBox(height: 5,),
                 Padding(
                   padding: EdgeInsets.all(MediaQuery.of(context).size.width /20),
                   child: const Text(" عطارد، کوچک‌ترین سیارهٔ سامانهٔ شمسی ما و نزدیک‌ترین سیاره به خورشید است. این سیاره به عنوان سیارهٔ دومین بعد از خورشید در سامانهٔ شمسی قرار دارد و نام خود را از خدای رومی با همین نام گرفته است. \n عطارد دارای ویژگی‌های منحصر به فردی است که آن را از سایر سیاره‌ها متمایز می‌کند. این سیاره دارای روزی بسیار کوتاه و سالانه‌ای طولانی است. به علت نزدیکی به خورشید، عطارد در مدت زمان ۵۸ روز زمینی یک بار به دور خورشید می‌گردد. این به این معنی است که یک سال عطاردی حدوداً ۸۸ روز زمینی طول می‌کشد. \n یکی از ویژگی‌های دیگر عطارد، سطح خاکستری و صخره‌ای آن است. سطح عطارد پر از خنده‌ها و غروب‌ها است که در نتیجهٔ حرارت شدید و تغییرات دما در طول روز و شب به وجود آمده‌اند. این تغییرات دما بین -۱۷۳ درجه سانتیگراد در شب و تا ۴۳۲ درجه سانتیگراد در روز متغیر است. \n عطارد همچنین دارای جوی بسیار نازک است که تقریباً از هیچ گازی تشکیل نشده است. به دلیل نداشتن جوی گسترده، عطارد به خوبی حرارت خورشید را تابیده و در سطح آن دما بسیار بالا می‌رسد. \n مأموریت‌های فضایی متعددی برای مطالعهٔ عطارد انجام شده است. یکی از مأموریت‌های مهم برای مطالعهٔ عطارد، مأموریت مریخ (Messenger) بود که توسط ناسا اجرا شد و در سال ۲۰۱۱ به عطارد رسید. این مأموریت به ما کمک کرد تا اطلاعات بیشتری دربارهٔ ساختار داخلی، سطح و جوی عطارد بدست آوریم.\n1. ویژگی‌های اصلی: \n قطر: قطر عطارد حدود ۴,۸۷۹ کیلومتر است که آن را به عنوان یکی از سیارات کوچک در منظومه شمسی تعریف می‌کند. \n جرم: جرم عطارد تقریباً ۳٫۳۱ برابر جرم زمین است. \n چگالی: چگالی عطارد بسیار بالاست و برابر با ۵٫۴۳ گرم بر سانتی‌متر مکعب است، که این مقدار بالاترین چگالی در منظومه شمسی است. \n دوره دورانی: عطارد برای یک دور کامل به دور خورشید حدود ۸۸ روز زمینی (نزدیک به ۵۹ روز مریخی) نیاز دارد. این به معنای این است که عطارد یکی از سریع‌ترین سیارات در حرکت خود است. \n 2. جو و اقلیم: \n عطارد جوی بسیار نازک دارد که از اکسیژن، هلیم و ردیف هیدروژن تشکیل شده است. \n به دلیل نزدیکی به خورشید و جذب حرارت شدید، عطارد دارای دمای بسیار بالا در سطح خود است. دمای قابل توجهی در طرف روز و دمای بسیار پایین در طرف شب وجود دارد. \n 3. ساختار داخلی: \n هسته: عطارد یک هسته فلزی آهنی با شعاع نسبتاً بزرگ دارد. \n پوسته: پوستهٔ عطارد نسبتاً نازک و سنگی است و حاوی کوه‌ها، خنده‌ها و دشت‌ها است. \n 4. ویژگی‌های دیگر: \n برجستگی‌ها و بوران‌ها: سطح عطارد با برجستگی‌ها و بوران‌هایی از سنگ‌ها پوشیده شده است که نشان از فعالیت زمین‌ساختی در گذشتهٔ آن است. \n کراترها: بسیاری از کراترها و ساختارهای ضربه‌ای روی سطح عطارد وجود دارد، نشانگر اصطکاک با بدنه‌های کوچک در گذشته است. ",style: TextStyle(fontSize: 18,),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
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
