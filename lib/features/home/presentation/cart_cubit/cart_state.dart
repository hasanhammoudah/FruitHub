part of 'cart_cubit.dart';

sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartItemAdded extends CartState {}

final class CartItemRemoved extends CartState {}

final class CartUpdated extends CartState {
  final List<CartItemEntity> cartItems;

  const CartUpdated(this.cartItems);

  @override
  List<Object> get props =>
      [cartItems]; // إضافة cartItems في قائمة الخصائص للمقارنة
}
