import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';

class SplashBaseView extends StatefulWidget {
  const SplashBaseView({super.key});

  @override
  State<SplashBaseView> createState() => _SplashBaseViewState();
}

class _SplashBaseViewState extends State<SplashBaseView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        AppRouter.landingScreen,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          ImageConstants.trafficLight,
          height: 296.h,
          width: 296.w,
        ),
      ),
    );
  }
}
