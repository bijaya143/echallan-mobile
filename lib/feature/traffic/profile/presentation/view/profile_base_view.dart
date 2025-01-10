import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';

class ProfileBaseView extends StatefulWidget {
  const ProfileBaseView({super.key});

  @override
  State<ProfileBaseView> createState() => _ProfileBaseViewState();
}

class _ProfileBaseViewState extends State<ProfileBaseView> {
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
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 24.h,
              ),
              width: 1.sw,
              decoration: BoxDecoration(
                color: ColorConstants.disableCardColor,
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              ),
              child: Column(
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
                    'Bijaya Majhi',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    '098765',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    'Traffic Habaldar',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            32.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                children: [
                  ProfileTabWIdget(
                    title: 'Edit Details',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.personalDetailScreen,
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
                        AppRouter.changePasswordScreen,
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
