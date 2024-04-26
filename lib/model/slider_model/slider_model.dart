import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel({
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    required String image,
  }) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
}
