import 'package:dalel/features/auth/presentation/views/sign_in.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => OnBoardingView(),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) => SignUpView(),
  ),
  GoRoute(
    path: '/signIn',
    builder: (context, state) => SignInView(),
  ),
]);
