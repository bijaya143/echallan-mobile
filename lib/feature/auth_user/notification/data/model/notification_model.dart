class NotificationModel {
  NotificationModel({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.isRead,
  });
  final String title;
  final String description;
  final DateTime date;
  final String time;
  final bool isRead;
}
