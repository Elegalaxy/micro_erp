
class Item {
  final String id;
  final String name;
  final String sku;
  final String unit;
  final double cost;
  final double price;
  final List<String> tags;
  final String supplier;
  final DateTime createdOn;

  Item({
    required this.id,
    required this.name,
    required this.sku,
    required this.unit,
    required this.cost,
    required this.price,
    required this.tags,
    required this.supplier,
    required this.createdOn,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String,
      unit: json['unit'] as String,
      cost: (json['cost'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      tags: List<String>.from(json['tags'] ?? []),
      supplier: json['supplier'] as String,
      createdOn: DateTime.parse(json['created_on'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sku': sku,
      'unit': unit,
      'cost': cost,
      'price': price,
      'tags': tags,
      'supplier': supplier,
      'created_on': createdOn.toIso8601String(),
    };
  }
}
