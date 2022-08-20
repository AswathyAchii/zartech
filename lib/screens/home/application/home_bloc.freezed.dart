// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRestaurantData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRestaurantData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRestaurantData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestaurantData value) getRestaurantData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRestaurantData value)? getRestaurantData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestaurantData value)? getRestaurantData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_GetRestaurantDataCopyWith<$Res> {
  factory _$$_GetRestaurantDataCopyWith(_$_GetRestaurantData value,
          $Res Function(_$_GetRestaurantData) then) =
      __$$_GetRestaurantDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRestaurantDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_GetRestaurantDataCopyWith<$Res> {
  __$$_GetRestaurantDataCopyWithImpl(
      _$_GetRestaurantData _value, $Res Function(_$_GetRestaurantData) _then)
      : super(_value, (v) => _then(v as _$_GetRestaurantData));

  @override
  _$_GetRestaurantData get _value => super._value as _$_GetRestaurantData;
}

/// @nodoc

class _$_GetRestaurantData implements _GetRestaurantData {
  const _$_GetRestaurantData();

  @override
  String toString() {
    return 'HomeEvent.getRestaurantData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRestaurantData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRestaurantData,
  }) {
    return getRestaurantData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRestaurantData,
  }) {
    return getRestaurantData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRestaurantData,
    required TResult orElse(),
  }) {
    if (getRestaurantData != null) {
      return getRestaurantData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestaurantData value) getRestaurantData,
  }) {
    return getRestaurantData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRestaurantData value)? getRestaurantData,
  }) {
    return getRestaurantData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestaurantData value)? getRestaurantData,
    required TResult orElse(),
  }) {
    if (getRestaurantData != null) {
      return getRestaurantData(this);
    }
    return orElse();
  }
}

abstract class _GetRestaurantData implements HomeEvent {
  const factory _GetRestaurantData() = _$_GetRestaurantData;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RestaurantDataModel>? get result => throw _privateConstructorUsedError;
  List<TableMenuList>? get tabMenuListDataModel =>
      throw _privateConstructorUsedError;
  List<CategoryDishes>? get categoryDishesDataModel =>
      throw _privateConstructorUsedError;
  List<Tab> get tabs => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  Option<Either<HomeFailure, List<RestaurantDataModel>>>
      get saveFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<RestaurantDataModel>? result,
      List<TableMenuList>? tabMenuListDataModel,
      List<CategoryDishes>? categoryDishesDataModel,
      List<Tab> tabs,
      int length,
      Option<Either<HomeFailure, List<RestaurantDataModel>>>
          saveFailureOrSuccessOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? result = freezed,
    Object? tabMenuListDataModel = freezed,
    Object? categoryDishesDataModel = freezed,
    Object? tabs = freezed,
    Object? length = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<RestaurantDataModel>?,
      tabMenuListDataModel: tabMenuListDataModel == freezed
          ? _value.tabMenuListDataModel
          : tabMenuListDataModel // ignore: cast_nullable_to_non_nullable
              as List<TableMenuList>?,
      categoryDishesDataModel: categoryDishesDataModel == freezed
          ? _value.categoryDishesDataModel
          : categoryDishesDataModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryDishes>?,
      tabs: tabs == freezed
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<Tab>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeFailure, List<RestaurantDataModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<RestaurantDataModel>? result,
      List<TableMenuList>? tabMenuListDataModel,
      List<CategoryDishes>? categoryDishesDataModel,
      List<Tab> tabs,
      int length,
      Option<Either<HomeFailure, List<RestaurantDataModel>>>
          saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? result = freezed,
    Object? tabMenuListDataModel = freezed,
    Object? categoryDishesDataModel = freezed,
    Object? tabs = freezed,
    Object? length = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_HomeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<RestaurantDataModel>?,
      tabMenuListDataModel: tabMenuListDataModel == freezed
          ? _value._tabMenuListDataModel
          : tabMenuListDataModel // ignore: cast_nullable_to_non_nullable
              as List<TableMenuList>?,
      categoryDishesDataModel: categoryDishesDataModel == freezed
          ? _value._categoryDishesDataModel
          : categoryDishesDataModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryDishes>?,
      tabs: tabs == freezed
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<Tab>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeFailure, List<RestaurantDataModel>>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {required this.isLoading,
      final List<RestaurantDataModel>? result,
      final List<TableMenuList>? tabMenuListDataModel,
      final List<CategoryDishes>? categoryDishesDataModel,
      required final List<Tab> tabs,
      required this.length,
      required this.saveFailureOrSuccessOption})
      : _result = result,
        _tabMenuListDataModel = tabMenuListDataModel,
        _categoryDishesDataModel = categoryDishesDataModel,
        _tabs = tabs;

  @override
  final bool isLoading;
  final List<RestaurantDataModel>? _result;
  @override
  List<RestaurantDataModel>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TableMenuList>? _tabMenuListDataModel;
  @override
  List<TableMenuList>? get tabMenuListDataModel {
    final value = _tabMenuListDataModel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryDishes>? _categoryDishesDataModel;
  @override
  List<CategoryDishes>? get categoryDishesDataModel {
    final value = _categoryDishesDataModel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Tab> _tabs;
  @override
  List<Tab> get tabs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  @override
  final int length;
  @override
  final Option<Either<HomeFailure, List<RestaurantDataModel>>>
      saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, result: $result, tabMenuListDataModel: $tabMenuListDataModel, categoryDishesDataModel: $categoryDishesDataModel, tabs: $tabs, length: $length, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other._tabMenuListDataModel, _tabMenuListDataModel) &&
            const DeepCollectionEquality().equals(
                other._categoryDishesDataModel, _categoryDishesDataModel) &&
            const DeepCollectionEquality().equals(other._tabs, _tabs) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(_tabMenuListDataModel),
      const DeepCollectionEquality().hash(_categoryDishesDataModel),
      const DeepCollectionEquality().hash(_tabs),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final bool isLoading,
      final List<RestaurantDataModel>? result,
      final List<TableMenuList>? tabMenuListDataModel,
      final List<CategoryDishes>? categoryDishesDataModel,
      required final List<Tab> tabs,
      required final int length,
      required final Option<Either<HomeFailure, List<RestaurantDataModel>>>
          saveFailureOrSuccessOption}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  List<RestaurantDataModel>? get result;
  @override
  List<TableMenuList>? get tabMenuListDataModel;
  @override
  List<CategoryDishes>? get categoryDishesDataModel;
  @override
  List<Tab> get tabs;
  @override
  int get length;
  @override
  Option<Either<HomeFailure, List<RestaurantDataModel>>>
      get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
