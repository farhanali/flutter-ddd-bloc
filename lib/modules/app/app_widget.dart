import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/bloc/auth_bloc.dart';
import '../login/bloc/login_bloc.dart';
import 'app_theme.dart';
import 'injection.dart';
import 'router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..getUser(),
        ),
        BlocProvider<LoginBloc>(
          create: (_) => getIt<LoginBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().base,
        builder: ExtendedNavigator<Router>(router: Router()),
      ),
    );
  }
}
