class Tour {
  final String id;
  final String name;
  final Map<String, dynamic>? description;
  final double price;
  final int maxSlot;
  final bool isCustom;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Tour({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    required this.maxSlot,
    required this.isCustom,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      maxSlot: json['max_slot'],
      isCustom: json['is_custom'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
