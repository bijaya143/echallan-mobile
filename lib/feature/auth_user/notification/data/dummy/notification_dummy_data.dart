import 'package:echalan/feature/auth_user/notification/data/model/notification_model.dart';

final List<NotificationModel> notificationDummyData = [
  NotificationModel(
    title: 'New Traffic Violation',
    description:
        'You have received a traffic violation ticket for speeding on MG Road. Please check your violations tab.',
    date: DateTime.now(),
    time: '10:00 AM',
    isRead: false,
  ),
  NotificationModel(
    title: 'Payment Reminder',
    description:
        'Your traffic violation fine of Rs. 1000 is due in 2 days. Please pay to avoid additional penalties.',
    date: DateTime.now().subtract(const Duration(days: 1)),
    time: '2:30 PM',
    isRead: true,
  ),
  NotificationModel(
    title: 'Dispute Status Update',
    description:
        'Your dispute for violation ticket #TK2023456 has been reviewed. Check status in violations tab.',
    date: DateTime.now().subtract(const Duration(days: 3)),
    time: '11:45 AM',
    isRead: true,
  ),
  NotificationModel(
    title: 'License Renewal Reminder',
    description:
        'Your driving license will expire in 30 days. Please visit nearest RTO office for renewal.',
    date: DateTime.now().subtract(const Duration(days: 5)),
    time: '9:15 AM',
    isRead: false,
  ),
];
