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
          children: [
            // Text(
            //   'Contact Us',
            //   style: TextStyle(
            //     fontSize: 20.sp,
            //     fontWeight: FontWeight.w700,
            //   ),
            // ),
            12.verticalSpace,
            Text(
              'If you have any questions or feedback, please contact us using the information below:',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
