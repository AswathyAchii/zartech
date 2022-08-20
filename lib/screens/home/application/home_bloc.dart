// ignore_for_file: await_only_futures

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zartech/screens/home/domain/failure/home_failure.dart';
import 'package:zartech/screens/home/domain/i_repo/i_home_repo.dart';
import 'package:zartech/screens/home/domain/model/restaurant_model.dart';
import 'package:zartech/screens/home/infrastructure/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepo iHomeRepo;

  HomeBloc(
    this.iHomeRepo,
  ) : super(HomeState.initial()) {
    on<_GetRestaurantData>((event, emit) async {
      final data = await iHomeRepo.getRestaurantData();
      emit(
        data.fold(
            (l) => state.copyWith(
                  isLoading: false,
                  saveFailureOrSuccessOption: some(Left(l)),
                ), (r) {
          final List<Tab> tabS = <Tab>[];
          for (int i = 0; i < r[0].tableMenuList!.length; i++) {
            tabS.add(
              Tab(
                text: r[0].tableMenuList![i].menuCategory.toString(),
              ),
            );
          }
          return state.copyWith(
            isLoading: false,
            saveFailureOrSuccessOption: some(Right(r)),
            result: r,
            length: r[0].tableMenuList!.length.toInt(),
            tabs: tabS,
          );
        }),
      );

      log(state.result.toString());
    });
  }
}
