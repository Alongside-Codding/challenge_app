// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:challenge_app/presentation/osm_page/osm_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OsmPage, initial: true),
    // AutoRoute(page: PageTest, initial: true),
  ],
)
class $AppRouter {}
