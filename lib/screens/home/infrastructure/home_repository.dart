// ignore_for_file: unused_catch_clause

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:zartech/injection.dart';
import 'package:zartech/screens/home/domain/failure/home_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:zartech/screens/home/domain/i_repo/i_home_repo.dart';
import 'package:zartech/screens/home/domain/model/restaurant_model.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IHomeRepo)
class HomeRepo implements IHomeRepo {
  @override
  Future<Either<HomeFailure, List<RestaurantDataModel>>>
      getRestaurantData() async {
    try {
      final response = await http.Client()
          .get(Uri.parse("https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad"));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<RestaurantDataModel> restaurantList = [];

        final data = jsonDecode(response.body);

        for (var datas in data) {
          final RestaurantDataModel restaurantModel =
              RestaurantDataModel.fromJson(datas);
          restaurantList.add(restaurantModel);
        }
        return Right(restaurantList);
      } else {
        return Left(HomeFailure.serverNotResponding());
      }
    } on Exception catch (e) {
      return left(HomeFailure.somethingWentWrong());
    }
  }
}
