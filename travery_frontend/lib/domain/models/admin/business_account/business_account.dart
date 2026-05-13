enum AccountRole { coordinator, guide, receptionist }

enum AccountStatus { active, inactive }

class BusinessAccount {
  const BusinessAccount({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.status,
    this.avatarUrl,
  });

  final String id;
  final String name;
  final String email;
  final AccountRole role;
  final AccountStatus status;
  final String? avatarUrl;
}
