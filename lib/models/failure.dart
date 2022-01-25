import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure {
  const factory Failure(String message) = _Failure;
  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);
}

