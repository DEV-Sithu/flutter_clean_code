import 'package:get/get.dart';
import 'burmese_language.dart';
import 'english_language.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'my_MM': BurmeseLanguage().burmeseLanguage,
    'en_US': EnglishLanguage().enLanguage,
  };
}