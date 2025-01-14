import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/features/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization
      .ensureInitialized(); // Ensure localization is initialized
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    //localization initialize
    EasyLocalization(
      path: 'assets/languages',
      supportedLocales: const [
        Locale('en'),
      ],
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // setSystemUIOverlayStyle();
    // ScreenUtil.init(context);
    return ScreenUtilInit(
      // designSize: getDesignSize(context),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //localization initialize
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // theme: lightMode,
          // darkTheme: darkMode,
          // themeMode: themeMode,
          // theme: lightMode,

          home: const HomeView(),
          // home: SearchView(),
        );
      },
    );
  }

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: HomeView(),
  //   );
  // }
}
