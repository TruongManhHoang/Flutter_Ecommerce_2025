import 'package:flutter_ecommerce_2025/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/create_account/create_account_screen.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/forget_password/forget_password_screen.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/forget_password/reset_password_screen.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/on_boarding/onboarding.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/verifiy_email/verifiy_email_screen.dart';
import 'package:flutter_ecommerce_2025/features/personalization/screens/profile/profile.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/home/home_screen.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/product_details/product_detail.dart';
import 'package:flutter_ecommerce_2025/features/splash/screens/splash.dart';
import 'package:flutter_ecommerce_2025/navigation_menu.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RouterName.splash,
    routes: [
      GoRoute(
        path: RouterName.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouterName.onBoardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RouterName.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouterName.createAccount,
        builder: (context, state) => const CreateAccountScreen(),
      ),
      GoRoute(
        path: RouterName.signUp,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: RouterName.verifiyEmail,
        builder: (context, state) => const VerifiyEmailScreen(),
      ),
      GoRoute(
        path: RouterName.successScreen,
        builder: (context, state) => const SuccessScreen(),
      ),
      GoRoute(
        path: RouterName.forgetPassword,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: RouterName.resetPassword,
        builder: (context, state) => const ResetPasswordScreen(),
      ),
      GoRoute(
        path: RouterName.navigationMenu,
        builder: (context, state) => const NavigationMenu(),
      ),
      GoRoute(
        path: RouterName.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: RouterName.profileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: RouterName.productDetailScreen,
        builder: (context, state) => const ProductDetailScreen(),
      ),
    ],
    // redirect: (context,state) {
    //     if (!UnAuthenticated.(context).isSignedIn) {
    //       return '/signin';
    //     } else {
    //       return null;
    //     }
    //   },
  );
}
