import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_task/model/category_model/category_model.dart';
import 'package:mind_task/model/product_model/product_model.dart';
import 'package:mind_task/model/slider_model/slider_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: 'slider') @Default([]) List<SliderModel> sliders,
    @JsonKey(name: 'categories') @Default([]) List<CategoryModel> categories,
    @JsonKey(name: 'products') @Default([]) List<ProductModel> products,
    @JsonKey(name: 'new_products') @Default([]) List<ProductModel> newProducts,
    @JsonKey(name: 'selected_products')
    @Default([])
    List<ProductModel> selectedProducts,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
