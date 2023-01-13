import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/init/utils/typedefs.dart';
import 'rating_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    RatingModel? rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(JsonMap json) => _$ProductModelFromJson(json);
}
