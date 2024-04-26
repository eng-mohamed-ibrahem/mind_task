import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    @JsonKey(name: 'short_desc') required String shortDesc,
    @JsonKey(name: 'main_image') required String mainImage,
    @JsonKey(name: 'list_price') required String listPrice,
    @JsonKey(name: 'sale_price') required String salePrice,
    required String discount,
    String? rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
