import 'package:echalan/core/fonts/fonts.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/sign_in/logic/sign_in_cubit.dart';
import 'package:echalan/feature/auth_user/sign_up/logic/sign_up_cubit.dart';
import 'package:echalan/route/app_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  static const _designSize = Size(375, 812);

  ThemeData _buildTheme(BuildContext context) {
    return ThemeData(
      fontFamily: FontFamily.publicSans,
      textTheme: _buildTextTheme(),
      scaffoldBackgroundColor: ColorConstants.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      useMaterial3: true,
    );
  }

  TextTheme _buildTextTheme() {
    return TextTheme(
      displayLarge: _buildTextStyle(
        size: 32.sp,
        weight: FontWeight.w700,
      ),
      displayMedium: _buildTextStyle(
        size: 20.sp,
        weight: FontWeight.w600,
      ),
      displaySmall: _buildTextStyle(
        size: 16.sp,
        weight: FontWeight.w500,
      ),
      headlineLarge: _buildTextStyle(
        size: 14.sp,
      ),
      headlineMedium: _buildTextStyle(
        size: 12.sp,
      ),
      headlineSmall: _buildTextStyle(
        size: 10.sp,
      ),
      titleLarge: _buildTextStyle(
        size: 16.sp,
        weight: FontWeight.w500,
      ),
      titleMedium: _buildTextStyle(
        size: 14.sp,
      ),
      titleSmall: _buildTextStyle(
        size: 12.sp,
      ),
      bodyLarge: _buildTextStyle(
        size: 16.sp,
      ),
      bodyMedium: _buildTextStyle(
        size: 14.sp,
      ),
      bodySmall: _buildTextStyle(size: 12.sp),
    );
  }

  TextStyle _buildTextStyle({
    required double size,
    FontWeight weight = FontWeight.w400,
  }) {
    return TextStyle(
      fontFamily: FontFamily.publicSans,
      fontSize: size.sp,
      fontWeight: weight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignInCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: _designSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          navigatorKey: navigatorKey,
          theme: _buildTheme(context),
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
