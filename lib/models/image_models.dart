import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'image_models.g.dart';

@JsonSerializable()
class pixelford{
  String id;
  String filename;
  String? title;

  @JsonKey(name: 'url_full_size')
  String urlFullSize;

  @JsonKey(name: 'url_small_size')
  String urlSmallSize;

  pixelford({
    this.title,
    required this.id,
    required this.filename,
    required this.urlFullSize,
    required this.urlSmallSize
  });

  factory pixelford.fromJson(Map<String, dynamic> json) => _$pixelfordFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$pixelfordToJson(this);
}