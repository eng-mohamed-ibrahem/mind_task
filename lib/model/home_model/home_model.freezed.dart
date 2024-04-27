// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: 'slider')
  List<SliderModel> get sliders => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<ProductModel> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_products')
  List<ProductModel> get newProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_products')
  List<ProductModel> get selectedProducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'slider') List<SliderModel> sliders,
      @JsonKey(name: 'categories') List<CategoryModel> categories,
      @JsonKey(name: 'products') List<ProductModel> products,
      @JsonKey(name: 'new_products') List<ProductModel> newProducts,
      @JsonKey(name: 'selected_products') List<ProductModel> selectedProducts});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
    Object? categories = null,
    Object? products = null,
    Object? newProducts = null,
    Object? selectedProducts = null,
  }) {
    return _then(_value.copyWith(
      sliders: null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SliderModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      newProducts: null == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      selectedProducts: null == selectedProducts
          ? _value.selectedProducts
          : selectedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'slider') List<SliderModel> sliders,
      @JsonKey(name: 'categories') List<CategoryModel> categories,
      @JsonKey(name: 'products') List<ProductModel> products,
      @JsonKey(name: 'new_products') List<ProductModel> newProducts,
      @JsonKey(name: 'selected_products') List<ProductModel> selectedProducts});
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
    Object? categories = null,
    Object? products = null,
    Object? newProducts = null,
    Object? selectedProducts = null,
  }) {
    return _then(_$HomeModelImpl(
      sliders: null == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SliderModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      newProducts: null == newProducts
          ? _value._newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      selectedProducts: null == selectedProducts
          ? _value._selectedProducts
          : selectedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {@JsonKey(name: 'slider') final List<SliderModel> sliders = const [],
      @JsonKey(name: 'categories')
      final List<CategoryModel> categories = const [],
      @JsonKey(name: 'products') final List<ProductModel> products = const [],
      @JsonKey(name: 'new_products')
      final List<ProductModel> newProducts = const [],
      @JsonKey(name: 'selected_products')
      final List<ProductModel> selectedProducts = const []})
      : _sliders = sliders,
        _categories = categories,
        _products = products,
        _newProducts = newProducts,
        _selectedProducts = selectedProducts;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  final List<SliderModel> _sliders;
  @override
  @JsonKey(name: 'slider')
  List<SliderModel> get sliders {
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliders);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductModel> _products;
  @override
  @JsonKey(name: 'products')
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductModel> _newProducts;
  @override
  @JsonKey(name: 'new_products')
  List<ProductModel> get newProducts {
    if (_newProducts is EqualUnmodifiableListView) return _newProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newProducts);
  }

  final List<ProductModel> _selectedProducts;
  @override
  @JsonKey(name: 'selected_products')
  List<ProductModel> get selectedProducts {
    if (_selectedProducts is EqualUnmodifiableListView)
      return _selectedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedProducts);
  }

  @override
  String toString() {
    return 'HomeModel(sliders: $sliders, categories: $categories, products: $products, newProducts: $newProducts, selectedProducts: $selectedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            const DeepCollectionEquality().equals(other._sliders, _sliders) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._newProducts, _newProducts) &&
            const DeepCollectionEquality()
                .equals(other._selectedProducts, _selectedProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sliders),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_newProducts),
      const DeepCollectionEquality().hash(_selectedProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: 'slider') final List<SliderModel> sliders,
      @JsonKey(name: 'categories') final List<CategoryModel> categories,
      @JsonKey(name: 'products') final List<ProductModel> products,
      @JsonKey(name: 'new_products') final List<ProductModel> newProducts,
      @JsonKey(name: 'selected_products')
      final List<ProductModel> selectedProducts}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: 'slider')
  List<SliderModel> get sliders;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories;
  @override
  @JsonKey(name: 'products')
  List<ProductModel> get products;
  @override
  @JsonKey(name: 'new_products')
  List<ProductModel> get newProducts;
  @override
  @JsonKey(name: 'selected_products')
  List<ProductModel> get selectedProducts;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
