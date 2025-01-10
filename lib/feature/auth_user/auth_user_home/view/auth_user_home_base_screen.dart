import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/dummy_data/violation_record_dummy_data.dart';
import 'package:echalan/feature/auth_user/notification/data/dummy/notification_dummy_data.dart';
import 'package:echalan/feature/traffic/dashboard/view/widgets/action_card.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/record_cart.dart';

class AuthUserHomeBaseScreen extends StatefulWidget {
  const AuthUserHomeBaseScreen({super.key});

  @override
  State<AuthUserHomeBaseScreen> createState() => _AuthUserHomeBaseScreenState();
}

class _AuthUserHomeBaseScreenState extends State<AuthUserHomeBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Namaste Rabin,',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRouter.notificationScreen,
                  );
                },
                child: Badge(
                  backgroundColor: ColorConstants.paidTextColor,
                  textColor: ColorConstants.backgroundColor,
                  offset: const Offset(4, -4),
                  label: Text(
                    notificationDummyData.length.toString(),
                  ),
                  child: SvgPicture.asset(
                    ImageConstants.ringBell,
                    width: 24.sp,
                    height: 24.sp,
                  ),
                ),
              ),
            ],
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
          32.verticalSpace,
          Align(
            child: Text(
              'Violation Records',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          24.verticalSpace,
          Expanded(
            child: ListView.builder(
              itemCount: violationRecordDummyData.length,
              itemBuilder: (context, index) {
                return RecordCard(
                  title: violationRecordDummyData[index].reason,
                  ticketNumber: violationRecordDummyData[index].ticketNumber,
                  issueDate: violationRecordDummyData[index].issueDate,
                  amount: violationRecordDummyData[index].amount,
                  status: 'paid',
                  trailing: AppButton(
                    text: 'See Details',
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.violationDetailScreen,
                        arguments: violationRecordDummyData[index],
                      );
                    },
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRouter.violationDetailScreen,
                      arguments: violationRecordDummyData[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
