import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/text_app_bar.dart';

class AuthUserContactUsScreen extends StatefulWidget {
  const AuthUserContactUsScreen({super.key});

  @override
  State<AuthUserContactUsScreen> createState() =>
      _AuthUserContactUsScreenState();
}

class _AuthUserContactUsScreenState extends State<AuthUserContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TextAppBar(
        title: 'Contact Us',
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 32.w,
          right: 32.w,
          bottom: 50.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            Text(
              'If you have any questions or feedback, please contact us using the information below:',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            24.verticalSpace,
            // Office Address Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on, size: 20.sp),
                8.horizontalSpace,
                Expanded(
                  child: Text(
                    'Office Address:\n123 Traffic Management Building,\nKathmandu, Nepal',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            // Email Section
            Row(
              children: [
                Icon(Icons.email, size: 20.sp),
                8.horizontalSpace,
                Expanded(
                  child: Text(
                    'Email: support@echallan.com',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            // Phone Number Section
            Row(
              children: [
                Icon(Icons.phone, size: 20.sp),
                8.horizontalSpace,
                Expanded(
                  child: Text(
                    'Phone: +977-123456789',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            // Social Media Links Section
            Row(
              children: [
                Icon(Icons.link, size: 20.sp),
                8.horizontalSpace,
                Expanded(
                  child: Text(
                    'Social Media:\nFacebook: facebook.com/echallan\nX: x.com/echallan\nInstagram: instagram.com/echallan',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            32.verticalSpace,
            // Center(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Add action to open an email app or perform other actions
            //     },
            //     child: Text(
            //       'Send Feedback',
            //       style: TextStyle(
            //         fontSize: 14.sp,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
