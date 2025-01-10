class AuthUserLicenseModel {
  AuthUserLicenseModel({
    required this.category,
    required this.dlNumber,
    required this.bloodGroup,
    required this.issueDate,
    required this.expiryDate,
    required this.dateOfBirth,
    required this.fatherOrMotherName,
    required this.citizenshipNumber,
    required this.passportNumber,
    required this.contactNumber,
  });
  final String category;
  final String dlNumber;
  final String bloodGroup;
  final DateTime issueDate;
  final DateTime expiryDate;
  final DateTime dateOfBirth;
  final String fatherOrMotherName;
  final String citizenshipNumber;
  final String passportNumber;
  final String contactNumber;
}
