part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool isLoading,
    required String result,
    required Option<Either<HomeFailure, List<RestaurantDataModel>>>
        saveFailureOrSuccessOption,
  }) = _HomeState;
  factory HomeState.initial() {
    return HomeState(
      isLoading: true,
      saveFailureOrSuccessOption: none(),
      result: '',
    );
  }
}
