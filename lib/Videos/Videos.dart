import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'ReelDetails.dart';
import 'ReelSideActionBar.dart';

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({super.key});

  @override
  State<InstagramHomePage> createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  List<String> videoUrls = [
    'https://drive.google.com/uc?id=116MrfAcQP3RPNTPlejcJm4B2DHL3mYNv&export=download',
    'https://drive.google.com/uc?id=11YK8x9pW_UD6b5uBLW5rKV7li82RUdFb&export=download',
    'https://drive.google.com/uc?export=download&id=1YAXfUA2hKUG7WWMVS6wQ-pleUiwK5BiP',
    'https://drive.google.com/uc?export=download&id=1h58X46b-9XPOFEbtMHPb9dDxMkUL4nS4',
    'https://drive.google.com/uc?export=download&id=1u8VST7I-46ehRimFm1kLO8adCIdcUVNG',
    'https://drive.google.com/uc?export=download&id=1caGQY6E1jNNTfwnKyFDMlqAF5NgYsHBf',
    'https://drive.google.com/uc?export=download&id=19OUp6CxGeKjhwtu1wODtzuqMi4gxqXzN',
    'https://drive.google.com/uc?export=download&id=15Soeg2OzC_D4iQ6bEmmT_x_ubwgHdBMd',
    'https://drive.google.com/uc?export=download&id=1-Yhx-Z_Y9juCg90ar3TkuiVl5pMDGf0L',
    'https://drive.google.com/uc?export=download&id=1-DiWBG-rME1439ItKIA-lRZtOp79dsU5',
    'https://drive.google.com/uc?export=download&id=1-DuAXV3K8_LelGmD1LanSZCKcMXp0jsN',
    'https://drive.google.com/uc?export=download&id=1-WkSWklVuCn1T_SO1aNYx6WP7P84pPht',
    'https://drive.google.com/uc?export=download&id=1-8vLuK1CbZksRW8D-OeKA2LNRGOt5xOH',
    'https://drive.google.com/uc?export=download&id=1-JUVdmsQ82S8GVrM2A6_2OvfCshgCm4B',
    'https://drive.google.com/uc?export=download&id=1-Jx3K1ZIUItShbvgmNqOLAPUY-mQsuDA',
    'https://drive.google.com/uc?export=download&id=15zN1uu8zoDOTQPcb97N5aoQTwklOLKrZ',
    'https://drive.google.com/uc?export=download&id=15q0geoXnqt6h4cBnQlK6T04XAHvDyHV7',
    'https://drive.google.com/uc?export=download&id=16-bGqc78TF86kll3eFyTAC0h1xzMf7Bp',
    'https://drive.google.com/uc?export=download&id=13GTItLpAS3bNMBBiLft2rLAcfH33dAJ4',
    'https://drive.google.com/uc?export=download&id=1BcYUbMt8SgrYPqbJYtL0PxVaMrpZCFmk',
    'https://drive.google.com/uc?export=download&id=1BcgB19yJFlrw69NXjEmH_BbsG-skioNq',
    'https://drive.google.com/uc?export=download&id=1BdKmuoKiNeT9zk3TPua3mfCDP_WIdn8A',
    'https://drive.google.com/uc?export=download&id=1BgNv9YDwcNmj46xMoRS-4NfYJU0VgoM5',
    'https://drive.google.com/uc?export=download&id=1Bi8HGN8hNyKYJpF1x4vs-JFO-lnpitB1',
    'https://drive.google.com/uc?export=download&id=1Bo5JdjeVxN5vqKmcisJrf82MohMzUk2R',
    'https://drive.google.com/uc?export=download&id=1BtRJmO-b32DfP5MFcMkOXo1lKR4Ia15r',
    'https://drive.google.com/uc?export=download&id=1BuQBfsCcFNxG1sznvXFA0zaH-FMPkGEL',
    'https://drive.google.com/uc?export=download&id=1Bya73P-j8GvK4Mbmd9U9g5P3inT_xsLH',
    'https://drive.google.com/uc?export=download&id=1C1RfDQxG7dFfCkTrzjeDGbKN9naxKP9e',
    'https://drive.google.com/uc?export=download&id=1C6PVhfkO8OWTjunyqh3BAXupc6Ja8VK8',
    'https://drive.google.com/uc?export=download&id=1C9sYBRDGUUEVIysIidtggitSlL7-XOkF',
    '',
    '',

  ];
  List<String> descriptionDetail = [
    "سفری به سوی حکمت و عظمت آفرینش",
    "جهان های تاریک، میتوانند در انواع مختلفی از کیهان وجود داشته باشند. این مناطق به عنوان (ناحیه های تاریک) شناخته میشوند و ممکن است شرایط زندگی متفاوتی از زمینی داشته باشند. در ناحیه های تاریک کیهان، معمولا نور فلکی کمتری وجود دارد. این میتواند به دلیل فاصله بسیار بزرگ از ستارگان و منابع نوری دیگر باشد، یا به دلیل وجود ماده متراکمی که نور را جذب میکند. در نتیجه، مناطقی وجود دارند که به طور قابل ملاحظه ای تاریک تر از سایر مناطق کیهان هستند. مطالعات نشان داده اند که حتی در این منطقه تاریک، ممکن است موجودات زنده وجود داشته باشند. برای مثال، می توان میکروب ها یا موجودات دیگری که نور نیاز کمتری دارند را در نظر گرفت. این موجودات ممکن است با استفاده از انرژی های دیگری مانند گرما یا شیمیایی زندگی کنند. علاوه بر این، ناحیه های تاریک می توانند مکان های برای تشکیل ستاره ها و سیاره ها باشند. در واقع، برخی از مطالعات نشان داده اند که بیشتری توده ماده کیهانی در نواحی تاریک قرار دارد. در کل، درک کامل از جهان های تاریک هنوز در حال توسعه است و مطالعات بیشتری لازم است تا بتوانیم در مورد محیط و زندگی در این مناطق بیشتر بدانیم.",
    "اگر ماه خیلی به زمین نزدیک شود چی اتفاقی می افتد؟\n اگر ماه به زمین خیلی نزدیک شود، این موضوع میتواند منجر به نابودی ماه شود به دلیل اثرات گرانشی قوی که توسط زمین ایجاد میشود. \n نیروی گرانشی زمین می تواند باعث شود که ماه به سمت زمین جذب شود و به آرامی به سطح زمین نزدیک شود. این اتفاق باعث انفجار و تبخیر ماه میشود و ماه به طور کامل نبود میشود.",
    "ارتباط بین رنگ و دمای ستاره ها یکی از موضوعات جالب در ستاره شناسی است. دمای سطح یک ستاره به طور مستقیم بر طیف نور ساطع شده از آن تاثیر میگذارد. این طیف نور، در واقع، رنگ ظاهری ستاره را تعیین میکند. ستاره های با دمای سطح بالا بیش از 8000 درجه کلوین به رنگ آبی یا آبی-سفید ظاهر میشوند. دمای متسوط ستاره ها در محدوده 4000 هزار تا 7000 هزار درجه کلوین قرار دارد و این ستاره ها معمولا به رنگ زرد یا زرر-سفید دیده میشوند.\n دمای سطح خورشید حددود 5800 درجه کلوین است، این دما بسیا ربالا بوده و به همین دلیل خورشید به رنگ زرد-سفید ظاهر میشود",
    "این نما نزدیک به 10000 کهکشان عمیق ترین تصویر نور مرئی از کیهان است. این عکس شامل کهکشان هایی در سنین، اندازه ها، شکل ها و رنگ های مختلف است. کوچکترین و قرمزترین کهکشانها، حدود 100 کهکشان، ممکن است در میان دورترین کهکشانهای شناخته شده باشند، زمانی که جهان فقط 800 میلیون سال سن داشته است. در عکس های زمینی، قسمتی از آسمان که کهکشان ها در آن قرار دارند (فقط یک دهم قطر ماه کامل) تا حد زیادی خالی است. این منطبقه که در صورت فلکی Fornax قرار دارد، آنقدر خالی است که تنها تعداد انگشت شماری از ستاره های کهکشان راه شیری را میتوان در تصویر مشاهده کرد. \n این تصویر به 800 نوردهی در طول 400 گردش هابل به دور زمین نیاز داشت. مقدار کل زمان قرار گرفتن در معرض 11.3 روز بود که بین 24 سپتامبر 2003 ژانویه 2004 گرفته شد.",
    "البته جالب است بدانید که ناسا مدتی قبل موفق شده تا به لطف شاهکار فنی مهندسین خود، پایان ماموریت بلند مدت کاوشگر فضایی وویجر2 را سه سال دیگر به تعویق بیندازد؛ بنابرین ماموریت ووجیر 2 که از سال 1977 برای کشف اطلاعات ارزشمند از اعماق فضا راه اندازی شده است، در سال 2026 به پایان خواهد رسید.\n مهندسان ناسا هیتر ها و سایر سیستم های غیر ضروری وویجر2 را خاموش کردند تا از این طریق بتوانند راه را برای انجام تحقیقات علمی فضایی بیشتر توسعه این کاوشگر فضایی هموار کنند. \n با این حال اکنون وویجر دو بسیار ضعیف شده است و ظاهر باید تصمیمات مهمی برای پنج ابزار علمی آن گرفته شود. علاوه برین دانشمندان یک سیستم حفاظتی به نام (تنظیم کننده ولتاژ) را نیز غیرفعال کرده اند که از تجهیزات فضاپیما در برابر امواج الکتریسیته محافظت میکند.",
    "کیهان به طرز باورنکردنی وسیع است. قطر قابل مشاهده کیهان حدود 93 میلیارد سال نوری تخمین زده می‌شود. این به این معناست که نور از دورترین نقاط قابل مشاهده کیهان حدود 93 میلیارد سال طول می‌کشد تا به ما برسد. کیهان حدود 13.8 میلیارد سال پیش با بیگ بنگ (مهبانگ) شکل گرفت. از آن زمان تاکنون، کیهان در حال انبساط بوده است. ",
    "بله، خورشید به قدری بزرگ است که می‌تواند حدود 1,300,000 زمین را در خود جای دهد. این مقایسه معمولاً بر اساس حجم انجام می‌شود. قطر خورشید حدود 1,392,700 کیلومتر است، در حالی که قطر زمین حدود 12,742 کیلومتر است.",
    "",
    "زیبایی کیهان و فزیک....!",
    "",
    "بله تا هنوز خیلی ها در اشتباه بودند، در واقع منظومه شمسی همراه با تمام سیارات نه تنها به دور خورشید میچرخد بلکه خورشید و دیگر سیارات در حال حرکت به دور کهکشان راه شیری با سرعت 828,000 کیلومتر بر ساعت (تقریبا 230 کیلومتر بر ثانیه) در حال حرکت به دور مرکز کهکشان راه شیری است.",
    "امروز میخواهم یکی از محبوب ترین و شگفت انگیزترین صحنه های فیلم (میان ستاره ای) را به شما اشتراک بگذارم. این فیلم ماجرای سفر گروهی از فضانوردان را برای نجات بشریت به تصویر میکشد که به اعماق فضا میروند تا سیاره ای قابل سکونت برای ادامه حیات بشر پیدا کنند.\n علم و تخیل: استفاده از نظریه های علمی همچون نسبیت و سیاه چاله ها برای خلق یک داستان جذاب و واقعی.\n فیلم: (میان ستاره ای) یک تجربه سینمایی بی نظیر است که نباید از دست بدهید.\n Interstellar#",
    "در فلم میان ستاره ای، سیاره میلر یکی از سیاراتی است که در نزدیکی یک سیاه چاله فوق العاده بزرگ به نام گارگانتوا قرار دارد. به دلیل اثرات شدید گرانشی سیاه چاله بر زمان، یک ساعت در سیاره میلر معادل هفت سال در زمین است. این پدیده ناشی از نظریه نسبیت عام انشتین است که بیان میکند زمان در میدان های گرانشی قوی تر کندتر میگذرد.\n اکنون که شما این ویدیو را تماشا میکنید، این ویدیو تقریبا دو سال پیش ایدیت شده است، ولی اکنون که سال 2024 است پس گفته میتوانیم 77 دقیقه زمان در سیاره میلر سپری شده است.",
    "شفق های قطبی پدیده های های زیبایی نوری هستند که در مناطبق قطبی رخ میدهند. این پدیده ها زمانی رخ میدهند که ذرات باردار از خورشید با جوً زمین برخورد میکنند.\n علت وقوع شفق های قطبی: خورشید به طور مداوم ذرات باردار (الکترون و پروتون ها) را به فضا پرتاب میکند که به عنوان باد های خورشیدی شناخته میشوند. زمانی که فعالیت خورشیدی شدیدتر باشد، مانند هنگام وقوع طوفان های خورشیدی، این باد ها قوی تر میشوند. زمانی که ذرات باردار از خورشید به میدان مغناطیسی زمین برخورد میکنند، به سمت قطب های مغناطیسی زمین هدایت میشوند. این ذرات با اتم ها و مولکول های موجود در حو بالای زمین در ارتفاع حدود 100 تا 400 کیلومتری برخورد میکنند. ",
    "یک انسان به طور میانگین 650000000 بار در طول عمر خود پلک میزند. هر پلک 0.25 ثانیه طول میکشد. حال تصویر که جهان هستی چقدر با عظمت و بزرگ است که در هر پلک زدن ما چنین اتفاقاتی رخ میدهد.",
    "Another Planet be like!\n\n #beauty #Earth #LifeStyle #travel #nature #Universe",
    "",
    "اگر خورشید زمین را روشن میکند پس چرا فضا تاریک است؟ \n در خلاء فضا ذرات و مواد زیادی برای پراکنده کردن نور خورشید وجود ندارد. در واقع چون نور خورشید در فضا منعکس یا پراگنده نمی شود، فضا سیاه دیده میشود. وقتی نور خورشید وارد جو زمین میشود، مولکول ها و ذرات جو پراگنده میکند. به همین دلیل آسمان، در طول روز به رنگ آبی دیده میشود.",
    "وقتی وارد افق رویداد سیاهچاله بشی...",
    "نظریه نسبیت عام که توسط آلبرت انیشتین ارائه شده است، نظریه ای است که نحوه عملکرد گرانش را توصیف میکند. فضا-زمان را به عنوان یک پارچه بزرگ و کشدار تصور کنید. هنگامی که یک جسم سنگین مانند یک سیاره را روی این پارچه قرار می دهید، یک فرورفتگی یا منحنی ایجاد میکند. نور و سایر اجسام در حال حرکت در فضا-زمان از این منحنی پیروی میکنند که ما آن را به عنوان گرانش در میکنیم. بنابرین، به زبان ساده، نظریه نسبیت عام به ما میگوید که گرانش فقط نیرویی نیست که اشیا را به هم میکشد. این در واقع انحنای فضا-زمان ناشی از جرم و انرژی است.",
    "سیاره خانه ما یعنی سیاره زمین سومین سیاره از خورشید است. این سیاره فراز و نشیب های زیادی را تا به امروز پشت سر گذاشته، تا موجودات زنده در آن ساکن شوند. در حالی که سیاره زمین پنجمین سیاره بزرگ منظومه شمسی است، اما تنها سیاره ای است که دارای آب و مایع روی سطح خود است.",
    "زیبا ترین عکس از زمین و ما انسان ها از فضا🌍🪐🛰️",
    "خورشید حدود 4.5 میلیارد سال قدمت دارد، اما برخی تحقیقات و مطالعات علمی نشان میدهد که بیش از 50 تا 70 درصد آب روی زمین از قبل از تولد خورشید وجود داشته است. تصور میشود که این آب از فضای بین ستاره ای آمده است، جایی که در اثر برخورد دنباله دار های یخی و سیارک ها شکل گرفته است. هنگامی که منظومه شمسی شکل گرفت، این آب در سیارات از جمله زمین گنجانده شد. نسبت دوتریوم به هیدروژن اندازه گیری فراوانی هیدروژن سنگین (دوتریوم) در یک نمونه آب است. دوتریوم در فضای بین ستاره ای بیشتر از خورشید است. مطالعه ای که توسط تیمی از دانشمندان دانشگاه شیکاگو و دانشگاه آریزونا انجام شد، نشان داد که نسبت دوتریوم به هیدروژن در آب زمین بالا است، که نشان میدهد آب زمین از فضای بین ستاره ای سرچشمه گرفته است. بنابرین، در حالی که خورشید از زمین پیرتر است، برخی از آب های روی زمین در واقع پیرتر از خوشید هستند.",
    "آیا تا به حال چرخش زمین را دیده اید؟\n در این ویدیو از یک دستگاه (ردیاب ستاره) استفاده شده است تا حرکت آسمان را با ردیابی آن ثابت کنند، این تکنیک چرخش سیاره ما را همانطور که در این تایم لپس دیده میشود تقلید میکند. زمین در حال چرخش است و هر 24 ساعت، یکبار به دور محورش می چرخد، سرعت چرخش زمین در خط استوا تقریبا 1600 کیلومتر بر ساعت است. خوشبختانه گرانش، شما را محکم به زمین چسپانده و به دلیل وجود تکانه و همینطور سرعت ثابت، شما این حرکت را احساس نمی کنید.",
    "تصویر زمین از روی ماهاین ویدیوی حیرت آور توسط فضاپیمای کاگویا آژانس فضایی ژاپن با دوربین HDTV گرفته شده است، این دوربین نصب شده روی این فضاپیما در مجموع توانست 13 ترابایت ویدیو ضبط کند این ویدیو از فاصله حدود دویست کیلومتری سطح ماه در حالی که فضاپیما در حال گردش در مدار ماه است گرفته شده است. \n سن سیاره زمین: 4/5 میلیارد سال.. \n ویژگی: قابل سکونت.. \n محافظان: سیاره مشتری و سیاره زحل، درختان. \n دفاع ویژه: لایه ازون، میدان مغناطیسی. \n آسیب رسان ها: سیارک های دنباله دار ها، شعله های خورشیدی، ابرنواختر ها.",
    "سیاره زمین در ابتدای شکل گیری اش آتشفشانی بوده و درونش گاز های گلخانه ای وجود داشت، این حالت یادآور شباهت زیاد به سیاره ناهید است، این سیاره در حال حاضر محیط بسیار سخت و طاقت فرسایی دارد؛ سطحی خشک و گرمایی فوق العاده سوزان که برای ذوب مس کافی است.",
    "قطر کهکشان ما بیش از 100 هزار سال نوری است، کهکشان ما در مقایسه با دیگر اجرام درونش بسیار بزرگ است، اما خود کهکشان ما در مقایسه با خوشه ی کهکشانی لانیاکیا با صد هزار کهکشان و ابرخوشه کهکشانی فراتر از آن و جهان قابل مشاده بسیار ناچیز است، ما فواصل کیهانی را سال نوری بیان میکنیم، اما سال نوری چیست و چطور محاسبه میشود؟ سال نوری در نجوم واحد اندازه گیری فاصله است، فاصله ای است که نور در یک سال در فضا طی میکند. به طور دقیق تر، اتحادیه ای جهانی اخترشناسی سال نوری را فاصله ای می داند که نور در 365 روز با سرعت سیصد هزار کیلومتر بر ثانیه طی میکند. کیهان بسیار شگفت انگیزه و راز های نفته ای در دل خودش جا داده ...",
    "سیاره زمین بدون انسان ها... انسان هر بلایی که بر سر زمین بیاورد، این سیاره خم به ابرو نیاورده و طبق تاریخچه ی پر فراز و نشیبی که در طول 4/5 میلیارد سال داشته پس از اندک زمانی خودش را باز سازی و ترمیم میکند. تبعات خرابکاری هایی که بشر علت آن است، تنها گریبان خودش و دیگر گونه های جاندار و به طور کلی هر موجودی را میگیرد که زیر عنوان موجود زنده مدت زمان کوتاهی مهمان این سیاره هستند. بله: زمین بدون انسان ها به طور قطع خانه ای امن تر و زیباتر است...",
    "قطر کهکشان 100 هزار سال نوری است اما فقط تقریبا 2 هزار سال نوری ضخامت دارد، در نتیجه یک صفحه ی باریک را تشکیل میدهد. خورشید ما تقریبا 27 هزار سال نوری تا مرکز کهکشان فاصله دارد. گرد و غبار در صفحه ی کهکشان راه شیری متمرکز شده شده است. این صفحه با یک هالی ی کروی احاطه شده که نسبتا عاری از گرد و غبار است. اما این هاله تقریبا شامل 200 خوشه ی ستاره ای کروی است که همگی گروه هایی توپ مانند از صد ها هزار ستاره را تشکیل میدهند. ",
    "چی میشد اگر سیارات دیگر جایگزین ماه میشدند؟ بنظر شما آسمان با کدوم یکی قشنگتر میشد؟...",
    "",
    "",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView.builder(
              itemCount: videoUrls.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return VideoPlayerItem(url: videoUrls[index], description: descriptionDetail[index], index: index,);
              }),
        ));
  }
}

class VideoPlayerItem extends StatefulWidget {
  final String url;
  final String description;
  final int index;

  const VideoPlayerItem({super.key, required this.url,required this.description, required this.index});

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController _controller;
  bool _isPreloaded = false;
  bool _isPlaying = false;
  bool _showIcon = false;
  bool showInitialText = true;
  Timer? _timer;


  @override
  void initState() {
    super.initState();
    _preloadVideo();
    _timer = Timer(const Duration(seconds: 10), () {
      if (mounted) { // بررسی اینکه آیا ویجت هنوز در درخت ویجت‌ها موجود است
        setState(() {
          showInitialText = false;
        });
      }
    });
  }

  Future<void> _preloadVideo() async {
    var fileInfo = await DefaultCacheManager().getFileFromCache(widget.url);
    fileInfo ??= await DefaultCacheManager().downloadFile(widget.url);
    _controller = VideoPlayerController.file(fileInfo.file)
      ..initialize().then((_) {
        if (mounted) { // بررسی اینکه آیا ویجت هنوز در درخت ویجت‌ها موجود است
          setState(() {
            _isPreloaded = true;
            _controller.setLooping(true);
            _controller.play();
          });
        }
      });
  }
  void _togglePlayPause() {
    if (_controller.value.isInitialized) {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      setState(() {
        _isPlaying = !_controller.value.isPlaying;
        _showIcon = true;
      });
      Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          setState(() {
            _showIcon = false;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    if (_controller.value.isInitialized) {
      _controller.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        BottomSheetHelper.showBottomSheet(
          context,
          _saveVideo,
              (message) => _sendReport(message),
        );
      },
      onTap: _togglePlayPause,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: _isPreloaded
            ? Stack(
                children: [
                  VideoPlayer(_controller),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.transparent
                          ],
                          begin: const Alignment(0, -0.75),
                          end: const Alignment(0, 0.1)),
                    ),
                  ),
                  if (_showIcon)
                    Center(
                      child: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 100.0,
                      ),
                    ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(flex: 16, child: ReelDetail(description: widget.description,)),
                           Flexible(flex: 2, child: ReelSideActionBar(onSaveVideo: _saveVideo,onSendReport: _sendReport, currentVideoIndex: widget.index,)),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            :   Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            AnimatedSwitcher(
              switchInCurve: Curves.linear,
              duration: const Duration(milliseconds: 500),
              child: showInitialText
                  ? const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "متاسفانه، به نظر می‌رسد اتصال اینترنت شما قطع است. لطفا اتصال خود را بررسی و مجدداً تلاش کنید.",
                  style: TextStyle(fontSize: 20,),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              )
                  : const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "اگر شما به انترنت وصل هستید، لطفا صبر کنید تا ویدیو دانلود شود!",
                  style: TextStyle(fontSize: 20,),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const CircularProgressIndicator(color: Colors.deepPurple,),
          ],
        )),
      ),
    );
  }
  void _saveVideo() async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'ویدیو در حال ذخیره شدن...',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
    );

    var fileInfo = await DefaultCacheManager().getFileFromCache(widget.url);
    fileInfo ??= await DefaultCacheManager().downloadFile(widget.url);
    await GallerySaver.saveVideo(fileInfo.file.path, albumName: 'YourAlbumName')
        .then((bool? success) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success! ? 'ذخیره ویدیو تکمیل شد!' : 'ویدیو ذخیره نشد !',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
        ),
      );
    });
  }

  void _sendReport(String message) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'shirzadharoon07@gmail.com',
      query: {
        'subject': 'Report Video',
        'body': message,
      }
          .entries
          .map((e) =>
      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&'),
    );

    try {
      await launch(emailLaunchUri.toString());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not launch email client')),
      );
    }
  }
}

class BottomSheetHelper {
  static void showBottomSheet(
      BuildContext context,
      VoidCallback onSave,
      Function(String) onSendReport,
      ) {
    showModalBottomSheet(
      backgroundColor: Colors.deepPurple,
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              height: 4.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
            ListTile(
              trailing: const Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ذخیره ویدیو',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () async {
                Navigator.pop(context);
                onSave();
              },
            ),
            ListTile(
              trailing: const Icon(
                Icons.report,
                color: Colors.white,
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'گزارش!',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () async {
                Navigator.pop(context);
                _showReportDialog(context, onSendReport);
              },
            ),
          ],
        );
      },
    );
  }

  static void _showReportDialog(
      BuildContext context, Function(String) onSendReport) {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'گزارش',
            textAlign: TextAlign.right,
          ),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: "!در اینجا بنویسید",
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              alignLabelWithHint: true,
            ),
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            maxLines: 3,
          ),
          actions: [
            TextButton(
              child: const Text(
                'لغو',
                style: TextStyle(color: Colors.deepPurple, fontSize: 17),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'ارسال',
                style: TextStyle(color: Colors.deepPurple, fontSize: 17),
              ),
              onPressed: () {
                String message = _controller.text;
                Navigator.of(context).pop();
                onSendReport(message);
              },
            ),
          ],
        );
      },
    );
  }
}

