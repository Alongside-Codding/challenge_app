// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:challenge_app/presentation/galery/galery.dart';
import 'package:challenge_app/presentation/home/home_page.dart';
import 'package:challenge_app/presentation/osm_page/osm_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: OsmPage),
    AutoRoute(page: GaleryPage),
  ],
)
class $AppRouter {}
