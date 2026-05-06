enum AccountRole { coordinator, guide, receptionist }

enum AccountStatus { active, inactive }

class Account {
  const Account({
    required this.id,
    required this.name,
    required this.email,
    required this.employeeId,
    required this.role,
    required this.status,
    required this.joinDate,
    this.avatarUrl,
  });

  final String id;
  final String name;
  final String email;
  final String employeeId;
  final AccountRole role;
  final AccountStatus status;
  final DateTime joinDate;
  final String? avatarUrl;
}

