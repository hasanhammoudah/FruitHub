import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/home/domain/data/models/order_product_model.dart';
import 'package:fruits_hub/features/home/domain/data/models/shipping_address_model.dart';
import 'package:uuid/uuid.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;
  final String orderId;
  OrderModel(
      {required this.totalPrice,
      required this.uID,
      required this.orderId,
      required this.shippingAddressModel,
      required this.orderProducts,
      required this.paymentMethod});

  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      orderId: const Uuid().v4(),
      totalPrice: orderEntity.cartEntity.calculateTotalPrice(),
      uID: orderEntity.uID,
      shippingAddressModel:
          ShippingAddressModel.fromEntity(orderEntity.shippingAddressEntity),
      orderProducts: orderEntity.cartEntity.cartItems
          .map((e) => OrderProductModel.fromEntity(
                cartItemEntity: e,
              ))
          .toList(),
      paymentMethod: orderEntity.payWithCash! ? 'Cash' : 'Paypal',
    );
  }
  toJson() => {
        'orderId': orderId,
        'totalPrice': totalPrice,
        'uId': uID,
        'status': 'pending',
        'date': DateTime.now().toString(),
        'shippingAddressModel': shippingAddressModel.toJson(),
        'orderProducts': orderProducts.map((e) => e.toJson()).toList(),
        'paymentMethod': paymentMethod,
      };
}
