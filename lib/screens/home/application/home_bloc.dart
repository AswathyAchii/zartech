import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
      emit(state.copyWith(isLoading: true));
      final data = iHomeRepo.getRestaurantData;
      // emit(state.copyWith(isLoading: false, result: data.));
      log(state.result);
    });
  }
}
