import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/outline_button.dart';
import 'package:echalan/widgets/terms_and_services.dart';
import 'package:flutter/gestures.dart';

class LandingBaseView extends StatefulWidget {
  const LandingBaseView({super.key});

  @override
  State<LandingBaseView> createState() => _LandingBaseViewState();
}

class _LandingBaseViewState extends State<LandingBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32.w,
            vertical: 36.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome\nto eChallan',
                style: context.displayLarge.copyWith(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                  height: 42.sp / 32.sp,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.trafficLoginScreen,
                      );
                    },
                    text: 'Traffic Police',
                  ),
                  16.verticalSpace,
                  OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.signInScreen,
                      );
                    },
                    text: 'Normal User',
                  ),
                  16.verticalSpace,
                  OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.guestHomeScreen,
                      );
                    },
                    text: 'Continue as Guest User',
                  ),
                ],
              ),
              const TermsAndServicesText(),
            ],
          ),
        ),
      ),
    );
  }
}
