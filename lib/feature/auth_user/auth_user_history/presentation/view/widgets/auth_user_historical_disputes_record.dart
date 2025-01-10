import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_history/data/dummy/auth_user_historical_dummy_data.dart';

import 'package:echalan/widgets/record_cart.dart';

class AuthUserHistoricalDisputesView extends StatelessWidget {
  const AuthUserHistoricalDisputesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: authUserDisputedData.length,
        itemBuilder: (context, index) {
          return RecordCard(
            title: authUserDisputedData[index].title,
            ticketNumber: authUserDisputedData[index].ticketNumber,
            issueDate: authUserDisputedData[index].issueDate,
            amount: authUserDisputedData[index].amount,
            status: authUserDisputedData[index].status,
            onTap: () {
              // Navigator.pushNamed(
              //   context,
              //   AppRouter.ticketDetailScreen,
              //   arguments: historicalData[index],
              // );
            },
          );
        },
      ),
    );
  }
}
