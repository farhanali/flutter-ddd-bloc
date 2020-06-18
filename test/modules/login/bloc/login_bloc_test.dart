import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/modules/auth/domain/auth_repository.dart';
import 'package:flutter_clean_arch/modules/login/bloc/login_bloc.dart';
import 'package:flutter_clean_arch/modules/login/domain/apiresponse.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_failure.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_info.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_repository.dart';
import 'package:flutter_clean_arch/modules/login/domain/register.info.dart';
import 'package:flutter_clean_arch/modules/login/domain/register_failure.dart';
import 'package:flutter_clean_arch/modules/login/domain/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'dart:math' show Random;

class MockAuthRepository extends Mock implements AuthRepository {}

class MockLoginRepository extends Mock implements LoginRepository {}

void main() {
  MockAuthRepository mockAuthRepository;
  MockLoginRepository mockLoginRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockLoginRepository = MockLoginRepository();
  });

  group('LoginBloc', () {
    final user = User(name: 'Someone', email: 'someone@email.com');

    final validLogin =
        LoginInfo(email: 'someone@email.com', password: 'someone1234');
    final invalidLogin =
        LoginInfo(email: 'noone@email.com', password: '12345678');
    final invalidEmailLogin =
        LoginInfo(email: 'someoneemail.com', password: 'someone1234');
    final invalidPasswordLogin =
        LoginInfo(email: 'someoneemail.com', password: '1234');

    blocTest(
      'Valid login emits [LoginStateInProgress, LoginStateSuccess]',
      build: () async {
        when(mockAuthRepository.save(user))
            .thenAnswer((_) async => right(none()));
        when(mockLoginRepository.login(validLogin))
            .thenAnswer((_) async => right(user));
        return LoginBloc(mockLoginRepository, mockAuthRepository);
      },
      act: (LoginBloc bloc) async => bloc.add(LoginEvent.signin(validLogin)),
      expect: [
        LoginStateInProgress(),
        LoginStateSuccess(user),
      ],
      verify: (_) async {
        verify(mockAuthRepository.save(user)).called(1);
      },
    );

    blocTest(
      'Invalid login emits [LoginStateInProgress, LoginStateFailed]',
      build: () async {
        when(mockLoginRepository.login(invalidLogin))
            .thenAnswer((_) async => left(LoginFailure.invalidLogin('')));
        return LoginBloc(mockLoginRepository, mockAuthRepository);
      },
      act: (LoginBloc bloc) async => bloc.add(LoginEvent.signin(invalidLogin)),
      expect: [
        LoginStateInProgress(),
        isA<LoginStateFailed>(),
      ],
    );

    blocTest(
      'Invalid "email" login emits [LoginStateInProgress, LoginStateFailed]',
      build: () async => LoginBloc(mockLoginRepository, mockAuthRepository),
      act: (LoginBloc bloc) async =>
          bloc.add(LoginEvent.signin(invalidEmailLogin)),
      expect: [
        LoginStateInProgress(),
        isA<LoginStateFailed>(),
      ],
    );

    blocTest(
      'Invalid "password" login emits [LoginStateInProgress, LoginStateFailed]',
      build: () async => LoginBloc(mockLoginRepository, mockAuthRepository),
      act: (LoginBloc bloc) async =>
          bloc.add(LoginEvent.signin(invalidPasswordLogin)),
      expect: [
        LoginStateInProgress(),
        isA<LoginStateFailed>(),
      ],
    );
  });

  group('RegisterBloc', () {
    final userAlreadyExistsRegisterInfo = RegisterInfo(
        name: 'Mateusz',
        email: 'mat.szafraniec@outlook.com',
        password: 'Test123');

    final newUserRegisterInfo = RegisterInfo(
        name: 'Mat Szafraniec',
        email: 'mat.szafraniec1@outlook.com',
        password: 'Test123');

    final apiResponse =
        ApiResponse(status: 'success', message: 'User created successfully');

    blocTest(
      "Valid registration emits [LoginStateInitialRegister, RegisterStateSuccess]",
      build: () async {
        when(mockLoginRepository.register(newUserRegisterInfo))
            .thenAnswer((_) async => right(apiResponse));
        return LoginBloc(mockLoginRepository, mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(LoginEvent.switchToRegister());
        bloc.add(LoginEvent.signup(newUserRegisterInfo));
      },
      expect: [
        LoginState.initialRegister(),
        LoginState.registerSuccess(apiResponse)
      ],
    );

    blocTest(
      'Switch to register state emits [LoginStateInitialRegister]',
      build: () async => LoginBloc(mockLoginRepository, mockAuthRepository),
      act: (bloc) => bloc.add(LoginEvent.switchToRegister()),
      expect: [isA<LoginStateInitialRegister>()],
    );

    blocTest(
      'Return to login state emits [LoginStateInitialRegister, LoginStateInitialLogin]',
      build: () async => LoginBloc(mockLoginRepository, mockAuthRepository),
      act: (bloc) {
        bloc.add(LoginEvent.switchToRegister());
        return bloc.add(LoginEvent.switchToLogin());
      },
      expect: [LoginStateInitialRegister(), LoginStateInitialLogin()],
    );

    blocTest(
      "'User already exists' endpoint response emits [LoginStateInitialRegister, RegisterStateFailed]",
      build: () async {
        when(mockLoginRepository.register(userAlreadyExistsRegisterInfo))
            .thenAnswer(
                (_) async => left(RegisterFailure.userAlreadyExist('')));
        return LoginBloc(mockLoginRepository, mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(LoginEvent.switchToRegister());
        bloc.add(LoginEvent.signup(userAlreadyExistsRegisterInfo));
      },
      expect: [
        LoginState.initialRegister(),
        LoginState.registerFailed(RegisterFailure.userAlreadyExist(''))
      ],
    );
  });
}
