import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_hub/core/services/data_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/home/domain/data/models/order_model.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService fireStoreService;

  OrdersRepoImpl(this.fireStoreService);
  @override
  Future<Either<Failure, void>> addOrders({required OrderEntity order}) async {
    try {
      await fireStoreService.addData(
        path: BackendEndpoint.addOrder,
        data: OrderModel.fromEntity(order).toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
