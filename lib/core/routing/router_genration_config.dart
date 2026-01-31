import 'package:financename/features/main/presentation/main_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/screens/creat_new_password_screen.dart';
import '../../features/auth/presentation/screens/forget_password_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/password_changed_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/card/presentation/card_screen.dart';
import '../../features/on_boarding_screen/presentation/screens/on_boarding_screan.dart';
import '../../features/auth/presentation/screens/verify_otp_screen.dart';
import 'app_routes.dart';

class RouterGenrationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScrean(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgetPasswordScreen,
        name: AppRoutes.forgetPasswordScreen,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.creatNewPasswordScreen,
        name: AppRoutes.creatNewPasswordScreen,
        builder: (context, state) => const CreatNewPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangedScreen,
        name: AppRoutes.passwordChangedScreen,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
      GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const VerifyOtpScreen(),
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: AppRoutes.cardScreen,
        name: AppRoutes.cardScreen,
        builder: (context, state) => const CardScreen(),
      ),
    ],
  );
}
