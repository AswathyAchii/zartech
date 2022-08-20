// ignore_for_file: unused_catch_clause

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:zartech/injection.dart';
import 'package:zartech/screens/home/domain/failure/home_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:zartech/screens/home/domain/i_repo/i_home_repo.dart';
import 'package:zartech/screens/home/domain/model/restaurant_model.dart';

@LazySingleton(as: IHomeRepo)
class HomeRepo implements IHomeRepo {
  @override
  Future<Either<HomeFailure, List<RestaurantDataModel>>>
      getRestaurantData() async {
    try {
      final response = await getIt<Dio>()
          .get("https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad");

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<RestaurantDataModel> restaurantList = [];
        print(response.data);
        for (final raw in response.data) {
          restaurantList
              .add(RestaurantDataModel.fromJson(raw as Map<String, dynamic>));
        }
        return Right(restaurantList);
      } else {
        return Left(HomeFailure.serverNotResponding());
      }
    } on DioError catch (e) {
      return left(HomeFailure.somethingWentWrong());
    }
  }
}
