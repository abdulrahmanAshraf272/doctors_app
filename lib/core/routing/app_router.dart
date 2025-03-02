import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/features/home/ui/home_screen.dart';
import 'package:doctors_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors_app/features/login/ui/login_screen.dart';
import 'package:doctors_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route genereateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (_) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
