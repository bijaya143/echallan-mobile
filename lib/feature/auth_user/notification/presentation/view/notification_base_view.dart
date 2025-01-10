import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/notification/data/dummy/notification_dummy_data.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:intl/intl.dart';

class NotificationBaseView extends StatefulWidget {
  const NotificationBaseView({super.key});

  @override
  State<NotificationBaseView> createState() => _NotificationBaseViewState();
}

class _NotificationBaseViewState extends State<NotificationBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TextAppBar(
        title: 'Notifications',
      ),
      body: ListView.builder(
        itemCount: notificationDummyData.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final notification = notificationDummyData[index];
          return Card(
            elevation: 0,
            color: ColorConstants.backgroundColor,
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              notification.title,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              DateFormat('MMM dd, yyyy')
                                  .format(notification.date),
                              style: TextStyle(
                                color: ColorConstants.disabledColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          notification.description,
                          style: TextStyle(
                            color: ColorConstants.disabledColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        4.verticalSpace,
                        Text(
                          notification.time,
                          style: TextStyle(
                            color: ColorConstants.disabledColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (notification.isRead)
                    Container(
                      width: 13.sp,
                      height: 13.sp,
                      decoration: const BoxDecoration(
                        color: ColorConstants.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    )
                  else
                    SizedBox(
                      height: 13.sp,
                      width: 13.sp,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
