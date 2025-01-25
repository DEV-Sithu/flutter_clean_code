
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  //await SharedPrefs().init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const App(),);

}

void initServices() async {
  // await Get.putAsync(() => DbService().init());
  // await Get.putAsync(() => SettingsService().init());
}






