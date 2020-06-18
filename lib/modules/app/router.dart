import 'package:auto_route/auto_route_annotations.dart';

import '../../modules/login/view/pages/login_page.dart';
import '../../modules/splash/view/pages/splash_page.dart';
import '../../modules/todos/view/pages/todo_list_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  LoginPage loginPage;
  TodoListPage todoListPage;
}
