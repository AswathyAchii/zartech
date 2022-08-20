import 'package:dartz/dartz.dart';
import 'package:zartech/screens/home/domain/failure/home_failure.dart';
import 'package:zartech/screens/home/domain/model/restaurant_model.dart';

abstract class IHomeRepo {
  Future<Either<HomeFailure, List<RestaurantDataModel>>> getRestaurantData();
}
