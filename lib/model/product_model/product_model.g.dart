// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      shortDesc: json['short_desc'] as String,
      mainImage: json['main_image'] as String,
      listPrice: json['list_price'] as String,
      salePrice: json['sale_price'] as String,
      discount: json['discount'] as String,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_desc': instance.shortDesc,
      'main_image': instance.mainImage,
      'list_price': instance.listPrice,
      'sale_price': instance.salePrice,
      'discount': instance.discount,
      'rating': instance.rating,
    };
