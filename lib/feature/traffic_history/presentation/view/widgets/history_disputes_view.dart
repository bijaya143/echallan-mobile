import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic_history/data/dummy_data/historical_dummy_data.dart';
import 'package:echalan/route/app_route.dart';

class TrafficHistoryDisputesView extends StatelessWidget {
  const TrafficHistoryDisputesView({super.key});

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'paid':
        return ColorConstants.paidCardColor;
      case 'pending':
        return ColorConstants.pendingCardColor;
      case 'Unpaid':
        return ColorConstants.unpaidCardColor;
      case 'Paid':
        return ColorConstants.paidCardColor;
      default:
        return ColorConstants.unpaidCardColor;
    }
  }

  Color _getTextColor(String status) {
    switch (status) {
      case 'Paid':
        return ColorConstants.paidTextColor;
      case 'Pending':
        return ColorConstants.pendingTextColor;
      case 'Unpaid':
        return ColorConstants.unpaidTextColor;
      default:
        return ColorConstants.unpaidTextColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: trafficDisputedData.length,
        itemBuilder: (context, index) {
          final disputedModel = trafficDisputedData[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouter.trafficTicketDetailScreen,
                arguments: disputedModel,
              );
            },
            child: Container(
              padding: EdgeInsets.all(
                24.w,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                color: ColorConstants.cardColor2.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.r),
              ),
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    disputedModel.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  8.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardItems(
                              title: 'Challan No.',
                              value: disputedModel.ticketNumber,
                            ),
                            4.verticalSpace,
                            CardItems(
                              title: 'Issue Date',
                              value: disputedModel.issueDate,
                            ),
                            4.verticalSpace,
                            CardItems(
                              title: 'Amount',
                              value: disputedModel.amount,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Row CardItems({
    required String title,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ColorConstants.disabledTextColor,
          ),
        ),
      ],
    );
  }
}
