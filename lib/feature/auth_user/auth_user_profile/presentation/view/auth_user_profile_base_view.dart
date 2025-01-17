import 'dart:convert';

import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/data/dummy/auth_user_profile_dummy_data.dart';
import 'package:echalan/route/app_route.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AuthUserProfileBaseView extends StatefulWidget {
  const AuthUserProfileBaseView({super.key});

  @override
  State<AuthUserProfileBaseView> createState() =>
      _AuthUserProfileBaseViewState();
}

class _AuthUserProfileBaseViewState extends State<AuthUserProfileBaseView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRouter.landingScreen,
                      (route) => false,
                    );
                  },
                  child: SvgPicture.asset(
                    ImageConstants.exit,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 16.h,
        ),
        child: Column(
          children: [
            // Swipeable container
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 24.h,
              ),
              width: 1.sw,
              height: 240.h, // Add fixed height for PageView container
              decoration: BoxDecoration(
                color: ColorConstants.disableCardColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: PageView(
                controller: _pageController,
                children: [
                  // Profile Info Page
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        2.horizontalSpace,
                        const ProfileContents(),
                        GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 24.r,
                            color: ColorConstants.disabledColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // QR Code Page
                  Padding(
                    padding: EdgeInsets.all(
                      16.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 24.r,
                            color: ColorConstants.disabledColor,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            QrImageView(
                              data: jsonEncode({
                                'fullName': authUserProfileModel.fullName,
                                'licenseNumber':
                                    authUserProfileModel.licenseNumber,
                              }),
                              size: 158.r,
                            ),
                          ],
                        ),
                        2.verticalSpace,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            32.verticalSpace,
            // Rest of the profile tabs
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  ProfileTabWIdget(
                    title: 'My personal details',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.authUserPersonalDetailScreen,
                      );
                    },
                  ),
                  16.verticalSpace,
                  const Divider(),
                  16.verticalSpace,
                  ProfileTabWIdget(
                    title: 'My license details',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.authUserLicenseDetailScreen,
                      );
                    },
                  ),
                  16.verticalSpace,
                  const Divider(),
                  16.verticalSpace,
                  ProfileTabWIdget(
                    title: 'Change Password',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.authUserChangePasswordScreen,
                      );
                    },
                  ),
                  16.verticalSpace,
                  const Divider(),
                  16.verticalSpace,
                  ProfileTabWIdget(
                    title: 'Contact Us',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.authUserContactUsScreen,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class ProfileContents extends StatelessWidget {
  const ProfileContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorConstants.primaryColor,
                  width: 2.w,
                ),
              ),
              child: CircleAvatar(
                radius: 50.r,
                backgroundColor: ColorConstants.backgroundColor,
                child: ClipOval(
                  child: Image.asset(
                    ImageConstants.profile,
                    height: 100.r,
                    width: 100.r,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8.r),
                decoration: const BoxDecoration(
                  color: ColorConstants.backgroundColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.camera_alt,
                  // color: Colors.white,
                  size: 20.r,
                ),
              ),
            ),
          ],
        ),
        16.verticalSpace,
        Text(
          authUserProfileModel.fullName,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        4.verticalSpace,
        Text(
          authUserProfileModel.phoneNumber,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class ProfileTabWIdget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ProfileTabWIdget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 1.sw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.r,
            ),
          ],
        ),
      ),
    );
  }
}
