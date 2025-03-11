// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fruits_hub/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/cart_item_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItems;
  final bool payWithCash;
  final ShippingAddressEntity shippingAddressEntity;

  OrderEntity(
    this.cartItems,
    this.payWithCash,
    this.shippingAddressEntity,
  );
}
