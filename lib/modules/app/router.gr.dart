// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_clean_arch/modules/splash/view/pages/splash_page.dart';
import 'package:flutter_clean_arch/modules/login/view/pages/login_page.dart';
import 'package:flutter_clean_arch/modules/todos/view/pages/todo_list_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const loginPage = '/login-page';
  static const todoListPage = '/todo-list-page';
  static const all = {
    splashPage,
    loginPage,
    todoListPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.loginPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginPage(),
          settings: settings,
        );
      case Routes.todoListPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => TodoListPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushLoginPage() => pushNamed(Routes.loginPage);

  Future pushTodoListPage() => pushNamed(Routes.todoListPage);
}
