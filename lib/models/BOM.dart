import 'Item.dart';

class BOM {
  final String id;
  final String itemId;
  final String itemName;
  final List<Item> material;
  final DateTime createdOn;

  BOM({
    required this.id,
    required this.itemId,
    required this.itemName,
    required this.material,
    required this.createdOn,
  });

  factory BOM.fromJson(Map<String, dynamic> json) {
    return BOM(
      id: json['id'] as String,
      itemId: json['item_id'] as String,
      itemName: json['item_name'] as String,
      material: (json['material'] as List<dynamic>)
          .map((m) => Item.fromJson(m as Map<String, dynamic>))
          .toList(),
      createdOn: DateTime.parse(json['created_on'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'item_id': itemId,
      'item_name': itemName,
      'material': material.map((m) => m.toJson()).toList(),
      'created_on': createdOn.toIso8601String(),
    };
  }
}
