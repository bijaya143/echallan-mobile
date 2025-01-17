import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_history/presentation/logic/auth_user_history_cubit.dart';
import 'package:echalan/feature/auth_user/auth_user_history/presentation/view/widgets/auth_user_historical_disputes_record.dart';
import 'package:echalan/feature/auth_user/auth_user_history/presentation/view/widgets/auth_user_historical_record.dart';
import 'package:echalan/feature/history/presentation/view/widgets/history_disputes_view.dart';
import 'package:echalan/feature/history/presentation/view/widgets/history_records_view.dart';
import 'package:echalan/feature/history/presentation/view/widgets/history_tab.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthUserHistoryBaseView extends StatefulWidget {
  const AuthUserHistoryBaseView({super.key});

  @override
  State<AuthUserHistoryBaseView> createState() =>
      _AuthUserHistoryBaseViewState();
}

class _AuthUserHistoryBaseViewState extends State<AuthUserHistoryBaseView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthUserHistoryCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: BlocBuilder<AuthUserHistoryCubit, AuthUserHistoryState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'History',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                40.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HistoryTab(
                      title: 'Records',
                      isActive: state.selectedTabIndex == 0,
                      onTap: () {
                        context.read<AuthUserHistoryCubit>().onTabSelected(0);
                      },
                    ),
                    HistoryTab(
                      title: 'Disputes',
                      isActive: state.selectedTabIndex == 1,
                      onTap: () {
                        context.read<AuthUserHistoryCubit>().onTabSelected(1);
                      },
                    ),
                  ],
                ),
                24.verticalSpace,
                if (state.selectedTabIndex == 0)
                  const AuthUserHistoricalRecord()
                else
                  const AuthUserHistoricalDisputesView(),
              ],
            );
          },
        ),
      ),
    );
  }
}
