part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool isLoading,
    required int currenMenuCategorytIndex,
    final List<RestaurantDataModel>? result,
    final List<TableMenuList>? tabMenuListDataModel,
    final List<CategoryDishes>? categoryDishesDataModel,
    required List<Addons> cartItemsmodel,
    required List<Tab> tabs,
    required int length,
    required Option<Either<HomeFailure, List<RestaurantDataModel>>>
        saveFailureOrSuccessOption,
  }) = _HomeState;
  factory HomeState.initial() {
    return HomeState(
      isLoading: true,
      saveFailureOrSuccessOption: none(),
      tabs: [],
      length: 0,
      currenMenuCategorytIndex: 0,
      cartItemsmodel: <Addons>[],
    );
  }
}
