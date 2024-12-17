import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ProductViewHeader extends StatelessWidget {
  const ProductViewHeader({super.key, required this.productLenght});
  final int productLenght;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$productLenght نتائج',
          textAlign: TextAlign.right,
          style: TextStyles.bold16,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.10000000149011612),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0x66CACECE),
              ),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesFilter2),
        )
      ],
    );
  }
}
