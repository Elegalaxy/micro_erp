
import 'Item.dart';

class Order {
  final String id;
  final String customerId;
  final List<Item> itemList;
  final DateTime dueDate;
  final double totalPrice;
  final String status;
  final DateTime createdOn;

  Order({
    required this.id,
    required this.customerId,
    required this.itemList,
    required this.dueDate,
    required this.totalPrice,
    required this.status,
    required this.createdOn,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'] as String,
      customerId: json['customer_id'] as String,
      itemList: (json['item_list'] as List<dynamic>)
          .map((i) => Item.fromJson(i as Map<String, dynamic>))
          .toList(),
      dueDate: DateTime.parse(json['due_date'] as String),
      totalPrice: (json['total_price'] as num).toDouble(),
      status: json['status'] as String,
      createdOn: DateTime.parse(json['created_on'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customer_id': customerId,
      'item_list': itemList.map((i) => i.toJson()).toList(),
      'due_date': dueDate.toIso8601String(),
      'total_price': totalPrice,
      'status': status,
      'created_on': createdOn.toIso8601String(),
    };
  }
}
