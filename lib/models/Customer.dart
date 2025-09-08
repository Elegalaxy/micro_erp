
class Customer {
  final String id;
  final String name;
  final String phone;
  final String address;
  final DateTime createdOn;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.createdOn,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
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
