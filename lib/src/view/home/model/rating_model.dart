import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/init/utils/typedefs.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    double? rate,
    int? count,
  }) = _RatingModel;

  factory RatingModel.fromJson(JsonMap json) => _$RatingModelFromJson(json);
}
