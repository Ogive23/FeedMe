import 'package:flutter/material.dart';

class AppLanguage extends ChangeNotifier {
  String language;
  Map<String, String> words;
  TextDirection textDirection;
  AppLanguage(String language) {
    this.language = language;
    textDirection = initTextDirection(this.language);
    words = initWords(this.language);
  }
  changeLanguage(String language) {
    this.language = language;
    textDirection = initTextDirection(this.language);
    words = initWords(this.language);
    notifyListeners();
  }

  Map<String, String> initWords(String language) {
    return language == 'En'
        ? {
            'bottomNavigationItemFirst': 'Stay in touch',
            'bottomNavigationItemSecond': 'Home',
            'bottomNavigationItemThird': 'Settings',
            'StayInTouchTitle': 'Our Society',
            'StayInTouchFacebookTitle': 'Facebook',
            'StayInTouchFacebookSubtitle': 'Visit our facebook Page.',
            'StayInTouchInstagramTitle': 'Instagram',
            'StayInTouchInstagramSubtitle': 'Visit our Instagram Account.',
            'StayInTouchYoutubeTitle': 'Youtube',
            'StayInTouchYoutubeSubtitle': 'Visit our youtube channel.',
            'StayInTouchTwitterTitle': 'Twitter',
            'StayInTouchTwitterSubtitle': 'Find us on twitter.',
            'HomeTitle': 'Feed Me',
            'HomeBody':
                'Feed Me is a program that helps you to save people from starving by sharing your food with them.',
            'HomeSubtitle': 'Click to Proceed',
            'SettingsTitle': 'Settings',
            'SettingsDarkMode': 'DarkMode',
            'SettingsLanguage': 'Language',
            'FeedMeIntroInfo': 'Info',
            'FeedMeIntroAchievementCenter': 'Achievement Center\nComing Soon!',
            'FeedMeIntroFirstButton': 'Share your food',
            'FeedMeIntroSecondButton': 'Volunteer',
            'FeedMeIntroWord':
                'Thank you for making the world a better place 😀',
            'MarkerCreationTitle': 'Marker Creation',
            'MarkerCreationFood': ' Food ',
            'MarkerCreationDrink': ' Drink ',
            'MarkerCreationBoth': ' Both of them ',
            'MarkerCreationDescription': 'Description',
            'MarkerCreationDescriptionDetails':
                'Describe it “E.g. it\s 4 bags of meat & one cup of cooked rice”',
            'MarkerCreationPriority': 'Priority',
            'MarkerCreationType': 'Type',
            'MarkerCreationQuantity': 'Quantity(Bags)',
            'MarkerCreationCreateMarkerButton': 'Create Marker',
          }
        : {
            'bottomNavigationItemFirst': 'أبقي علي تواصل',
            'bottomNavigationItemSecond': 'الرئيسية',
            'bottomNavigationItemThird': 'إعدادات',
            'StayInTouchTitle': 'مجتمعنا',
            'StayInTouchFacebookTitle': 'فيسبوك',
            'StayInTouchFacebookSubtitle': 'زوروا صفحتنا.',
            'StayInTouchInstagramTitle': 'إنستجرام',
            'StayInTouchInstagramSubtitle': 'زوروا حسابنا علي إنستجرام.',
            'StayInTouchYoutubeTitle': 'يوتيوب',
            'StayInTouchYoutubeSubtitle': 'زوروا قناتنا علي يوتيوب.',
            'StayInTouchTwitterTitle': 'تويتر',
            'StayInTouchTwitterSubtitle': 'زورونا علي تويتر.',
            'HomeTitle': 'إطعام',
            'HomeBody':
                'إطعام هو برنامج يساعد في إنقاذ البشر من التضور جوعاً عن طريق مشاركة الطعام.',
            'HomeSubtitle': 'أضغط للدخول',
            'SettingsTitle': 'الإعدادات',
            'SettingsDarkMode': 'الوضع المظلم',
            'SettingsLanguage': 'اللغة',
            'FeedMeIntroInfo': 'معلومات',
            'FeedMeIntroAchievementCenter': 'قريباً إن شاء الله.',
            'FeedMeIntroFirstButton': 'شارك طعامك',
            'FeedMeIntroSecondButton': 'تطوع',
            'FeedMeIntroWord': 'شكراً لجعلك من العالم مكاناً أفضل 😀',
            'MarkerCreationTitle': 'أضف علامة طعام',
            'MarkerCreationFood': ' طعام ',
            'MarkerCreationDrink': ' شراب ',
            'MarkerCreationBoth': ' كلاهما ',
            'MarkerCreationDescription': 'معلومات',
            'MarkerCreationDescriptionDetails':
                'قم بوصفه علي سبيل المثال، ”يوجد هنا 4 أكياس من اللحم و طبق من الأرز“.',
            'MarkerCreationPriority': 'الأهمية',
            'MarkerCreationType': 'النوع',
            'MarkerCreationQuantity': 'عدد الأكياس',
            'MarkerCreationCreateMarkerButton': 'أضف العلامة',
          };
  }

  TextDirection initTextDirection(String language) {
    return language == 'En' ? TextDirection.ltr : TextDirection.rtl;
  }
}
