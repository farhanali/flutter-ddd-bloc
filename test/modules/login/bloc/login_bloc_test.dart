import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/modules/auth/domain/auth_repository.dart';
import 'package:flutter_clean_arch/modules/login/bloc/login_bloc.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_failure.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_info.dart';
import 'package:flutter_clean_arch/modules/login/domain/login_repository.dart';
import 'package:flutter_clean_arch/modules/login/domain/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

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
    const user = User(name: 'Someone', email: 'someone@email.com');

    const validLogin =
        LoginInfo(email: 'someone@email.com', password: 'someone1234');
    const invalidLogin =
        LoginInfo(email: 'noone@email.com', password: '12345678');
    const invalidEmailLogin =
        LoginInfo(email: 'someoneemail.com', password: 'someone1234');
    const invalidPasswordLogin =
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
      act: (bloc) async => bloc.add(const LoginEvent.signin(validLogin)),
      expect: [
        const LoginStateInProgress(),
        const LoginStateSuccess(user),
      ],
      verify: (_) async {
        verify(mockAuthRepository.save(user)).called(1);
      },
    );

    blocTest(
      'Invalid login emits [LoginStateInProgress, LoginStateFailed]',
      build: () async {
        when(mockLoginRepository.login(invalidLogin))
            .thenAnswer((_) async => left(const LoginFailure.invalidLogin('')));
        return LoginBloc(mockLoginRepository, mockAuthRepository);
      },
      act: (bloc) async => bloc.add(const LoginEvent.signin(invalidLogin)),
      expect: [
        const LoginStateInProgress(),
        isA<LoginStateFailed>(),
      ],
    );

    blocTest(
      'Invalid "email" login emits [LoginStateInProgress, LoginStateFailed]',
      build: () async => LoginBloc(mockLoginRepository, mockAuthRepository),
      act: (bloc) async => bloc.add(const LoginEvent.signin(invalidEmailLogin)),
      expect: [
        const LoginStateInProgress(),
        isA<LoginStateFailed>(),
      ],
    );

    blocTest(
      'Invalid "password" login emits [LoginStateInProgress, LoginStateFailed]',
      build: () async => LoginBloc(mockLoginRepository, mockAuthRepository),
      act: (bloc) async =>
          bloc.add(const LoginEvent.signin(invalidPasswordLogin)),
      expect: [
        const LoginStateInProgress(),
        isA<LoginStateFailed>(),
      ],
    );
  });
}
