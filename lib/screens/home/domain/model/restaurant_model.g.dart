// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDataModel _$$_RestaurantDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantDataModel(
      restaurantId: json['restaurant_id'] as String?,
      restaurantName: json['restaurant_name'] as String?,
      restaurantImage: json['restaurant_image'] as String?,
      tableId: json['table_id'] as String?,
      tableName: json['table_name'] as String?,
      branchName: json['branch_name'] as String?,
      nexturl: json['nexturl'] as String?,
      tableMenuList: (json['table_menu_list'] as List<dynamic>?)
          ?.map((e) => TableMenuList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantDataModelToJson(
        _$_RestaurantDataModel instance) =>
    <String, dynamic>{
      'restaurant_id': instance.restaurantId,
      'restaurant_name': instance.restaurantName,
      'restaurant_image': instance.restaurantImage,
      'table_id': instance.tableId,
      'table_name': instance.tableName,
      'branch_name': instance.branchName,
      'nexturl': instance.nexturl,
      'table_menu_list': instance.tableMenuList,
    };

_$_TableMenuList _$$_TableMenuListFromJson(Map<String, dynamic> json) =>
    _$_TableMenuList(
      menuCategory: json['menu_category'] as String?,
      menuCategoryId: json['menu_category_id'] as String?,
      menuCategoryImage: json['menu_category_image'] as String?,
      nexturl: json['nexturl'] as String?,
      categoryDishes: (json['category_dishes'] as List<dynamic>?)
          ?.map((e) => CategoryDishes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TableMenuListToJson(_$_TableMenuList instance) =>
    <String, dynamic>{
      'menu_category': instance.menuCategory,
      'menu_category_id': instance.menuCategoryId,
      'menu_category_image': instance.menuCategoryImage,
      'nexturl': instance.nexturl,
      'category_dishes': instance.categoryDishes,
    };

_$_CategoryDishes _$$_CategoryDishesFromJson(Map<String, dynamic> json) =>
    _$_CategoryDishes(
      dishId: json['dish_id'] as String?,
      dishName: json['dish_name'] as String?,
      dishPrice: (json['dish_price'] as num?)?.toDouble(),
      dishImage: json['dish_image'] as String?,
      dishCurrency: json['dish_currency'] as String?,
      dishCalories: (json['dish_calories'] as num).toDouble(),
      dishDescription: json['dish_description'] as String?,
      dishAvailability: json['dish_Availability'] as bool?,
      dishType: json['dish_Type'] as int?,
      nexturl: json['nexturl'] as String?,
      addonCat: (json['addonCat'] as List<dynamic>?)
          ?.map((e) => AddonCat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryDishesToJson(_$_CategoryDishes instance) =>
    <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_currency': instance.dishCurrency,
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
      'dish_Availability': instance.dishAvailability,
      'dish_Type': instance.dishType,
      'nexturl': instance.nexturl,
      'addonCat': instance.addonCat,
    };

_$_AddonCat _$$_AddonCatFromJson(Map<String, dynamic> json) => _$_AddonCat(
      addonCategory: json['addon_category'] as String?,
      addonCategoryId: json['addon_category_id'] as String?,
      addonSelection: json['addon_selection'] as int?,
      nexturl: json['nexturl'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => Addons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddonCatToJson(_$_AddonCat instance) =>
    <String, dynamic>{
      'addon_category': instance.addonCategory,
      'addon_category_id': instance.addonCategoryId,
      'addon_selection': instance.addonSelection,
      'nexturl': instance.nexturl,
      'addons': instance.addons,
    };

_$_Addons _$$_AddonsFromJson(Map<String, dynamic> json) => _$_Addons(
      dishId: json['dish_id'] as String?,
      dishName: json['dish_name'] as String?,
      dishPrice: (json['dish_price'] as num?)?.toDouble(),
      dishImage: json['dish_image'] as String?,
      dishCurrency: json['dish_currency'] as String?,
      dishCalories: (json['dish_calories'] as num?)?.toDouble(),
      dishDescription: json['dish_description'] as String?,
      dishAvailability: json['dish_Availability'] as bool?,
      dishType: json['dish_Type'] as int?,
    );

Map<String, dynamic> _$$_AddonsToJson(_$_Addons instance) => <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_currency': instance.dishCurrency,
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
      'dish_Availability': instance.dishAvailability,
      'dish_Type': instance.dishType,
    };
