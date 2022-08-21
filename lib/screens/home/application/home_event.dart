part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getRestaurantData() = _GetRestaurantData;
  const factory HomeEvent.getCurrentTabIndex(
      {required int currenMenuCategorytIndex}) = _GetCurrentTabIndex;
}
