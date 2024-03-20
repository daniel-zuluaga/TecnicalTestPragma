import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tecnical_test_pragma/features/detail_cat/presentation/pages/detail_cat_page.dart';
import 'package:tecnical_test_pragma/features/landing_cats/domain/entities/catbreed_entity.dart';
import 'package:tecnical_test_pragma/features/landing_cats/presentation/pages/landing_page.dart';
import 'package:tecnical_test_pragma/features/splash/presentation/pages/splash_catbreeds.dart';
import 'package:tecnical_test_pragma/routers/routers.dart';

class AppRoute {
  static GoRouter? globalGoRouter;
  static GoRouter getGoRouter([Widget? widget]) {
    return globalGoRouter ??= router(widget);
  }

  static GoRouter router([Widget? widget]) => GoRouter(
        initialLocation: splashPage,
        routes: [
          GoRoute(
            path: splashPage,
            name: splashPage,
            builder: (context, state) {
              return widget ?? const SplashCatBreeds();
            },
            routes: [
              GoRoute(
                  path: homePage,
                  name: homePage,
                  builder: (context, state) {
                    return const LandingPage();
                  },
                  routes: [
                    GoRoute(
                      path: detailPage,
                      name: detailPage,
                      builder: (context, state) {
                        final catBreeds = (state.extra!) as CatBreedEntity;
                        return DetailCatPage(
                          catBreedEntity: catBreeds,
                        );
                      },
                    ),
                  ]),
            ],
          ),
        ],
      );
}
