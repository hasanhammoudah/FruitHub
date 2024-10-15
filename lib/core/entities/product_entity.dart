import 'dart:io';

import 'package:fruits_hub/core/entities/review_entity.dart';


class ProductEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewEntity> reviews;
  ProductEntity({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.reviews,
    required this.expirationsMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.isOrganic = false,
    required this.image,
    required this.isFeatured,
    this.imageUrl,
  });
}
