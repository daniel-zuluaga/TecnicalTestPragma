import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tecnical_test_pragma/app_cats_responsive.dart';
import 'package:tecnical_test_pragma/features/splash/presentation/pages/splash_catbreeds.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        designSize: AppCatsResponsiveApp.designSizeSmall,
        builder: ((context, child) => MaterialApp(
              // localizationsDelegates: const [
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate,
              // ],
              // supportedLocales: const [
              //   Locale('en', 'US'),
              //   Locale('es', 'ES'),
              // ],
              builder: (context, child) {
                ScreenUtil.init(context);
                final mediaQuery = MediaQuery.of(context);
                // Take the textScaleFactor from system and make
                // sure that it's no less than 0.8, but no more
                // than 1.1.
                return MediaQuery(
                    data: mediaQuery.copyWith(
                      alwaysUse24HourFormat: false,),
                    child: AppCatsResponsiveApp(child: child!));
              },

              title: 'enMedallo',
              // routeInformationParser:
              //     AppRoute().getGoRouter().routeInformationParser,
              // routeInformationProvider:
              //     AppRoute().getGoRouter().routeInformationProvider,
              home: const SplashCatBreeds(),
              debugShowCheckedModeBanner: false,
            )));
  }
}
