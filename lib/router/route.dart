import 'package:go_router/go_router.dart';

import '../ui/pages/login/login_page.dart';

class Routes {
  static const login = '/login';
  static const main = '/';

  static String nested(List<String> args) {
    String path = '';
    for (final String v in args) {
      if (v.startsWith('/')) {
        path = '$path$v';
      } else {
        if (path.endsWith('/')) {
          path = '$path$v';
        } else {
          path = '$path/$v';
        }
      }
    }
    return path;
  }
}

final _router = GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(path: Routes.login, builder: (_, __) => const LoginPage()),
  ],
);

GoRouter get router => _router;
