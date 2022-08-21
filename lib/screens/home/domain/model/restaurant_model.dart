// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class RestaurantDataModel with _$RestaurantDataModel {
  const factory RestaurantDataModel({
    @JsonKey(name: "restaurant_id") required String? restaurantId,
    @JsonKey(name: "restaurant_name") required String? restaurantName,
    @JsonKey(name: "restaurant_image") required String? restaurantImage,
    @JsonKey(name: "table_id") required String? tableId,
    @JsonKey(name: "table_name") required String? tableName,
    @JsonKey(name: "branch_name") required String? branchName,
    @JsonKey(name: "nexturl") required String? nexturl,
    @JsonKey(name: "table_menu_list")
        required List<TableMenuList>? tableMenuList,
  }) = _RestaurantDataModel;

  factory RestaurantDataModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataModelFromJson(json);
}

@freezed
class TableMenuList with _$TableMenuList {
  const factory TableMenuList({
    @JsonKey(name: "menu_category") required String? menuCategory,
    @JsonKey(name: "menu_category_id") required String? menuCategoryId,
    @JsonKey(name: "menu_category_image") required String? menuCategoryImage,
    @JsonKey(name: "nexturl") required String? nexturl,
    @JsonKey(name: "category_dishes")
        required List<CategoryDishes>? categoryDishes,
  }) = _TableMenuList;

  factory TableMenuList.fromJson(Map<String, dynamic> json) =>
      _$TableMenuListFromJson(json);
}

@freezed
class CategoryDishes with _$CategoryDishes {
  const factory CategoryDishes({
    @JsonKey(name: "dish_id") required String? dishId,
    @JsonKey(name: "dish_name") required String? dishName,
    @JsonKey(name: "dish_price") required double? dishPrice,
    @JsonKey(name: "dish_image") required String? dishImage,
    @JsonKey(name: "dish_currency") required String? dishCurrency,
    @JsonKey(name: "dish_calories") required double dishCalories,
    @JsonKey(name: "dish_description") required String? dishDescription,
    @JsonKey(name: "dish_Availability") required bool? dishAvailability,
    @JsonKey(name: "dish_Type") required int? dishType,
    @JsonKey(name: "nexturl") required String? nexturl,
    required List<AddonCat>? addonCat,
  }) = _CategoryDishes;

  factory CategoryDishes.fromJson(Map<String, dynamic> json) =>
      _$CategoryDishesFromJson(json);
}

@freezed
class AddonCat with _$AddonCat {
  const factory AddonCat({
    @JsonKey(name: "addon_category") required String? addonCategory,
    @JsonKey(name: "addon_category_id") required String? addonCategoryId,
    @JsonKey(name: "addon_selection") required int? addonSelection,
    @JsonKey(name: "nexturl") required String? nexturl,
    required List<Addons>? addons,
  }) = _AddonCat;

  factory AddonCat.fromJson(Map<String, dynamic> json) =>
      _$AddonCatFromJson(json);
}

@freezed
class Addons with _$Addons {
  const factory Addons({
    @JsonKey(name: "dish_id") required String? dishId,
    @JsonKey(name: "dish_name") required String? dishName,
    @JsonKey(name: "dish_price") required double? dishPrice,
    @JsonKey(name: "dish_image") required String? dishImage,
    @JsonKey(name: "dish_currency") required String? dishCurrency,
    @JsonKey(name: "dish_calories") required double? dishCalories,
    @JsonKey(name: "dish_description") required String? dishDescription,
    @JsonKey(name: "dish_Availability") required bool? dishAvailability,
    @JsonKey(name: "dish_Type") required int? dishType,
  }) = _Addons;

  factory Addons.fromJson(Map<String, dynamic> json) => _$AddonsFromJson(json);
}
