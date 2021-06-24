import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:big_wallet/app/app.dart';
import 'package:big_wallet/domain/domain.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// Main function to initialize the app
void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await initServices();
    runApp(MyApp());
  } catch (error) {
    Utility.printELog(error.toString());
  }
}

/// Initialize the services before the app starts.
Future<void> initServices() async {
  /// Services
  await Get.putAsync(() => CommonService().init());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
        designSize: const Size(375, 745),
        builder: () => GetMaterialApp(
              locale: const Locale('en'),
              title: StringConstants.appName,
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.system,
              translations: TranslationsFile(),
              supportedLocales: TranslationsFile.listOfLocales,
              getPages: AppPages.pages,
              initialRoute: AppPages.initial,
              enableLog: true,
            ));
  }
}
