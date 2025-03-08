part of 'cart_item_cubit.dart';

sealed class CartItemState {
  const CartItemState();
}

final class CartItemInitial extends CartItemState {}

final class CartItemUpdated extends CartItemState {
  final CartItemEntity cartItemEntity;

  const CartItemUpdated(this.cartItemEntity);
}

class CartUpdated extends CartItemState {
  final List<CartItemEntity> cartItems;
  CartUpdated(this.cartItems);
}
