import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_2025/features/splash/bloc/splash_cubit.dart';
import 'package:flutter_ecommerce_2025/features/splash/bloc/splash_state.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_asset.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Chọn hình ảnh tùy theo chế độ sáng/tối
    String splashImage = AppThemeBrightness.isDarkMode(context)
        ? AppAssets.logoSplashWhitePng
        : AppAssets.logoSplashBlackPng;

    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          context.go(RouterName.onBoardingScreen);
        }
      },
      child: Scaffold(
        body: Center(child: Image.asset(splashImage)),
      ),
    );
  }
}
