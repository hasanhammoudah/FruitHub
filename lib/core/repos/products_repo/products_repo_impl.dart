import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/models/product_model.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub/core/services/data_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl(this.databaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      // Fetch data from the API
      final response = await databaseService.getData(
        path: BackendEndpoint.getProducts,
        query: {
          'limit': 10,
          'orderBy': 'sellingCount',
          'descending': true,
        },
      );

      // Validate and parse the response
      if (response is List) {
        final List<ProductEntity> products = response
            .cast<Map<String, dynamic>>()
            .map((e) => ProductModel.fromJson(e).toEntity())
            .toList();

        return right(products);
      } else {
        // Handle unexpected response type
        return Left(ServerFailure('Unexpected response format'));
      }
    } catch (e) {
      // Return detailed error message
      return Left(ServerFailure('Failed to get products: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      // Fetch data from the API
      final response = await databaseService.getData(
        path: BackendEndpoint.getProducts,
      );

      // Validate and parse the response
      if (response is List) {
        final List<ProductEntity> products = response
            .cast<Map<String, dynamic>>()
            .map((e) => ProductModel.fromJson(e).toEntity())
            .toList();

        return right(products);
      } else {
        // Handle unexpected response type
        return Left(ServerFailure('Unexpected response format'));
      }
    } catch (e) {
      // Return detailed error message
      return Left(ServerFailure('Failed to get products: ${e.toString()}'));
    }
  }
}
