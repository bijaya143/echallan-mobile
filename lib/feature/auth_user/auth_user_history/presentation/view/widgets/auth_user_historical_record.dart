import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_history/data/dummy/auth_user_historical_dummy_data.dart';
import 'package:echalan/widgets/record_cart.dart';

class AuthUserHistoricalRecord extends StatelessWidget {
  const AuthUserHistoricalRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: authUserHistoricalData.length,
        itemBuilder: (context, index) {
          return RecordCard(
            title: authUserHistoricalData[index].title,
            ticketNumber: authUserHistoricalData[index].ticketNumber,
            issueDate: authUserHistoricalData[index].issueDate,
            amount: authUserHistoricalData[index].amount,
            status: authUserHistoricalData[index].status,
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
