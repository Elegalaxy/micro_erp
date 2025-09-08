
class Inventory {
  final String id;
  final String itemId;
  final String itemName;
  final int amount;
  final String location;
  final int threshold;
  final DateTime createdOn;

  Inventory({
    required this.id,
    required this.itemId,
    required this.itemName,
    required this.amount,
    required this.location,
    required this.threshold,
    required this.createdOn,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) {
    return Inventory(
      id: json['id'] as String,
      itemId: json['item_id'] as String,
      itemName: json['item_name'] as String,
      amount: json['amount'] as int,
      location: json['location'] as String,
      threshold: json['threshold'] as int,
      createdOn: DateTime.parse(json['created_on'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'item_id': itemId,
      'item_name': itemName,
      'amount': amount,
      'location': location,
      'threshold': threshold,
      'created_on': createdOn.toIso8601String(),
    };
  }
}
