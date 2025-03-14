import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());

  final ProductsRepo productsRepo;
  int productsLength = 0;

  Future<void> getProducts() async {
    if (isClosed) return;
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    if (isClosed) return;
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) => emit(ProductsSuccess(products)),
    );
  }

  Future<void> getBestSellingProducts() async {
    if (isClosed) return;
    emit(ProductsLoading());
    final result = await productsRepo.getBestSellingProducts();
    if (isClosed) return;
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) {
        productsLength = products.length;
        if (!isClosed) {
          emit(ProductsSuccess(products));
        }
      },
    );
  }
}
