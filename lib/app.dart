
import 'package:flutter/material.dart';
import 'package:flutter_clean_code/utils/language/app_language.dart';
import 'package:get/get.dart';

import 'features/on_boardings/splash_screen.dart';

class App extends StatelessWidget {


  const App({super.key});

  @override
  Widget build(BuildContext context) {

 //   final sharedPrefs = SharedPrefs();
    return GetMaterialApp(
          debugShowCheckedModeBanner: false,
        //  title: UnicodeMM.mmText(LanguageGlobalVar.app_name.tr),
        //  themeMode: sharedPrefs.get_CurrentTheme == "light" ?ThemeMode.light : ThemeMode.dark,
       //   theme: MKAppTheme.lightTheme,
      //    darkTheme: MKAppTheme.darkTheme,
      //    locale:  Locale(sharedPrefs.get_LanguageCode, sharedPrefs.get_CountryCode),
          translations: AppLanguage(),
          home: const SplashScreen()
    );
  }
}
