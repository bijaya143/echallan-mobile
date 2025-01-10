import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';

final List<ViolationRecordModel> violationRecordDummyData = [
  ViolationRecordModel(
    reason: 'Driving without license',
    ticketNumber: '2024010001',
    issueDate: '15 Jan, 2024',
    amount: 'Rs. 1500',
    district: 'Kathmandu',
    issuedBy: 'Ram Thapa',
  ),
  ViolationRecordModel(
    reason: 'Over speeding',
    ticketNumber: '2024010025',
    issueDate: '18 Jan, 2024',
    amount: 'Rs. 2000',
    district: 'Lalitpur',
    issuedBy: 'Shyam Karki',
  ),
  ViolationRecordModel(
    reason: 'Parking violation',
    ticketNumber: '2024010089',
    issueDate: '20 Jan, 2024',
    amount: 'Rs. 1000',
    district: 'Bhaktapur',
    issuedBy: 'Hari Sharma',
  ),
];
