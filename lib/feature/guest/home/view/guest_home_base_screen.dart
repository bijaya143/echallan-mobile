import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';

class GuestHomeBaseScreen extends StatefulWidget {
  const GuestHomeBaseScreen({super.key});

  @override
  State<GuestHomeBaseScreen> createState() => _GuestHomeBaseScreenState();
}

class _GuestHomeBaseScreenState extends State<GuestHomeBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Namaste,',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  12.verticalSpace,
                  Text(
                    'ट्राफिक नियमहरू पालना गर्नु सबैको जिम्मेवारी हो। यसले तपाईँको र अरूको सुरक्षा सुनिश्चित गर्छ',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  16.verticalSpace,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      ImageConstants.trafficImage,
                      width: 1.sw,
                      height: 150.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  24.verticalSpace,
                  const ChallanCard(),
                  24.verticalSpace,
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    'try our new features',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorConstants.disabledColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  16.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: RecommendedCard(
                          title: 'Traffic News',
                          onTap: () {},
                        ),
                      ),
                      8.horizontalSpace,
                      Expanded(
                        child: RecommendedCard(
                          title: 'Road Traffic',
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRouter.trafficUpdateScreen,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Text(
                  'Privacy Policy I Terms & Condition',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: ColorConstants.disabledColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 82.h,
        decoration: BoxDecoration(
          color: ColorConstants.cardColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class ChallanCard extends StatelessWidget {
  const ChallanCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        color: ColorConstants.cardColor,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find your challan',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          4.verticalSpace,
          Text(
            'If you got the challan from our traffic police officer then type your ticket number to pay fine',
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorConstants.disabledColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          24.verticalSpace,
          AppButton(
            text: 'Find your challan',
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRouter.findChalanScreen,
              );
            },
          ),
        ],
      ),
    );
  }
}
