import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/guest/home/view/guest_home_base_screen.dart';
import 'package:echalan/feature/traffic/dashboard/view/widgets/action_card.dart';
import 'package:echalan/route/app_route.dart';

class TrafficHomeBaseView extends StatefulWidget {
  const TrafficHomeBaseView({super.key});

  @override
  State<TrafficHomeBaseView> createState() => _TrafficHomeBaseViewState();
}

class _TrafficHomeBaseViewState extends State<TrafficHomeBaseView> {
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
          Text(
            'Namaste Rabin,',
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
          ActionCard(
            title: 'Issue a Challan',
            subtitle: 'Issue a challan to impose a fine on the driver.',
            buttonText: 'Scan user details',
            onPressed: () {
              print('Issue a ticket');
              Navigator.pushNamed(
                context,
                AppRouter.qrScannerScreen,
              );
              // Navigator.pushNamed(
              //   context,
              //   AppRouter.createTicketScreen,
              // );
            },
          ),
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
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRouter.trafficUpdateScreen,
                    );
                  },
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
    );
  }
}
