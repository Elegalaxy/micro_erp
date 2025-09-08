
class Supplier {
  final String id;
  final String name;
  final String phone;
  final String address;
  final DateTime createdOn;

  Supplier({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.createdOn,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) {
    return Supplier(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      createdOn: DateTime.parse(json['created_on'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'address': address,
      'created_on': createdOn.toIso8601String(),
    };
  }
}
