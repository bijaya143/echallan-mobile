class ViolationRecordModel {
  ViolationRecordModel({
    required this.reason,
    required this.ticketNumber,
    required this.issueDate,
    required this.amount,
    required this.district,
    required this.issuedBy,
  });
  final String reason;
  final String ticketNumber;
  final String issueDate;
  final String amount;
  final String district;
  final String issuedBy;
}
