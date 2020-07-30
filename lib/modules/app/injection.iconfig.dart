// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_clean_arch/common/api/api_config.dart';
import 'package:flutter_clean_arch/modules/auth/data/auth_repository_impl.dart';
import 'package:flutter_clean_arch/modules/auth/domain/auth_repository.dart';
import 'package:flutter_clean_arch/modules/login/data/login_repository_mock.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_repository.dart';
import 'package:flutter_clean_arch/common/api/api_client.dart';
import 'package:flutter_clean_arch/modules/auth/bloc/auth_bloc.dart';
import 'package:flutter_clean_arch/modules/login/data/login_api.dart';
import 'package:flutter_clean_arch/modules/login/bloc/login_bloc.dart';
import 'package:flutter_clean_arch/modules/login/data/login_repository_impl.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<AuthRepository>(() => AuthRepositoryImpl());
  g.registerFactory<AuthBloc>(() => AuthBloc(g<AuthRepository>()));
  g.registerFactory<LoginApi>(() => LoginApi.create(g<ApiClient>()));
  g.registerFactory<LoginBloc>(
      () => LoginBloc(g<LoginRepository>(), g<AuthRepository>()));
  g.registerFactory<LoginRepository>(() => LoginRepositoryImpl(g<LoginApi>()));

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<LoginRepository>(() => AuthRepositoryMock());
  }

  //Eager singletons must be registered in the right order
  if (environment == 'dev') {
    g.registerSingleton<ApiConfig>(ApiConfigDev());
  }
  if (environment == 'test') {
    g.registerSingleton<ApiConfig>(ApiConfigTest());
  }
  if (environment == 'prod') {
    g.registerSingleton<ApiConfig>(ApiConfigProd());
  }
  g.registerSingleton<ApiClient>(ApiClient(g<ApiConfig>()));
}
