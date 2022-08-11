

class NewsModel {
  int? id;
  String? imageUrl;
  String? title;
  String? writer;
  String? date;
  String? content;
  String? views;
  int? like;

  NewsModel(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.writer,
      required this.date,
      required this.content,
      required this.views,
      required this.like});
}

class HashTagModel {
  String? title;

  HashTagModel({required this.title});
}

class PadCastModel {
  int? id;
  String? imageUrl;
  String? title;
  String? recoder;

  PadCastModel(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.recoder});
}

List<NewsModel> newsPost = [
  NewsModel(
    id: 1,
    imageUrl:
        'https://digiato.com/wp-content/uploads/2022/05/photo_2022-05-20_08-55-52.jpg',
    title:
        'وان پلاس از گوشی Nord 2T با چیپ دیمنسیتی 1300 و شارژ سریع 80 وات رونمایی کرد',
    writer: 'سیدمحمد رضاتوفیقی',
    date: '12 اردیبهشت',
    content: 'content',
    views: '250',
    like: 250,
  ),
  NewsModel(
    id: 1,
    imageUrl:
        'https://digiato.com/wp-content/uploads/2022/05/photo_2022-05-19_16-50-44.jpg',
    title:
        'اسپیس ایکس با ارزش‌ 125 میلیارد دلاری به باارزش‌ترین استارتاپ آمریکا تبدیل می‌شود',
    writer: 'سیدمحمد رضاتوفیقی',
    date: '12 اردیبهشت',
    content: 'content',
    views: '250',
    like: 250,
  ),
  NewsModel(
    id: 1,
    imageUrl:
        'https://digiato.com/wp-content/uploads/2022/05/Galaxy-Z-Flip-4-render.jpg',
    title: 'گلکسی زد فلیپ 4 با اسنپدراگون 8 نسل یک پلاس در گیک‌بنچ رویت شد',
    writer: 'سیدحمید رضاتوفیقی',
    date: '12 اردیبهشت',
    content: 'content',
    views: '250',
    like: 250,
  ),
  NewsModel(
    id: 1,
    imageUrl:
        'https://digiato.com/wp-content/uploads/2022/05/photo_2022-05-19_16-02-14.jpg',
    title:
        'سونی از ایرباد LinkBuds S با قابلیت حذف نویز فعال و قیمت 200 دلار رونمایی کرد',
    writer: 'مهدی کرمی مقدم',
    date: '12 اردیبهشت',
    content: 'content',
    views: '250',
    like: 250,
  ),
  NewsModel(
    id: 1,
    imageUrl:
        'https://digiato.com/wp-content/uploads/2022/05/photo_2022-05-19_15-13-58.jpg',
    title: 'گوگل تایید کرد: بزودی شعبه روسیه اعلام ورشکستگی می‌کند',
    writer: 'مهدی کرمی مقدم',
    date: '12 اردیبهشت',
    content: 'content',
    views: '250',
    like: 250,
  ),
  NewsModel(
    id: 1,
    imageUrl:
        'https://digiato.com/wp-content/uploads/2022/05/photo_2022-05-19_10-23-21.jpg',
    title: 'هیات مدیره توییتر به ایلان ماسک: ما توافق را تغییر نمی‌دهیم',
    writer: 'محمدحسین شعبانی',
    date: '12 اردیبهشت',
    content: 'content',
    views: '250',
    like: 250,
  ),
];

List<HashTagModel> tagList = [
  HashTagModel(title: 'برنامه نویسی'),
  HashTagModel(title: 'موبایل'),
  HashTagModel(title: 'هوش مصنوعی'),
  HashTagModel(title: 'بازی'),
  HashTagModel(title: 'خودرو'),
  HashTagModel(title: 'گرافیک'),
  HashTagModel(title: 'ارز دیجیتال'),
  HashTagModel(title: 'اینترنت اشیاء'),
];
List<HashTagModel> selecedTagList = [];
List<PadCastModel> padCastList = [
  PadCastModel(
      id: 1,
      imageUrl:
          'https://wallpapergram.ir/wp-img/WallpaperGram.IR_1639394846_2485.jpg',
      title: 'آیفون 14',
      recoder: 'مهدی کرمی مقدم'),
  PadCastModel(
      id: 1,
      imageUrl:
          'https://wallpapergram.ir/wp-img/WallpaperGram.IR_1643619606_2846.jpg',
      title: 'برنامه نویس خوب',
      recoder: 'سیدمحمد رضاتوفیقی'),
  PadCastModel(
      id: 1,
      imageUrl:
          'https://wallpapergram.ir/wp-img/WallpaperGram.IR_1617611385_3443.jpg',
      title: 'بررسی بازار موبایل',
      recoder: 'سیدحمد رضاتوفیقی'),
  PadCastModel(
      id: 1,
      imageUrl:
          'https://wallpapergram.ir/wp-img/WallpaperGram.IR_1643225824_5222.jpg',
      title: 'بررسی آپدیت لاراول',
      recoder: 'محمدحسین شعبانی'),
  PadCastModel(
      id: 1,
      imageUrl:
          'https://wallpapergram.ir/wp-img/WallpaperGram.IR_ws1589137085_20741.jpg',
      title: 'ASP.NET',
      recoder: 'محمد حسین میرزابیگی'),
];
