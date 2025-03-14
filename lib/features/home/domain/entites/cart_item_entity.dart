import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/cart_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({required this.productEntity, this.quantity = 0});

  num calculateTotalPrice() {
    return productEntity.price * quantity;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * quantity;
  }

  increaseCount() {
    quantity++;
  }

  decreaseCount(CartEntity cartEntity) {
    if (quantity > 1) {
      quantity--;
    } else {
      //TODO
      cartEntity.removeCartItem(this);
    }
  }

  @override
  List<Object?> get props => [productEntity];
}
