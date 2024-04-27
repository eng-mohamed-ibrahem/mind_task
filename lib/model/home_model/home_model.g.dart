// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      sliders: (json['slider'] as List<dynamic>?)
              ?.map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      newProducts: (json['new_products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedProducts: (json['selected_products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'slider': instance.sliders,
      'categories': instance.categories,
      'products': instance.products,
      'new_products': instance.newProducts,
      'selected_products': instance.selectedProducts,
    };
