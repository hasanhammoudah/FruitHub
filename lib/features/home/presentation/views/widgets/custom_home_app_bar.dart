import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CutomHomeAppBar extends StatelessWidget {
  const CutomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: const Text('صباح الخير !..',
          textAlign: TextAlign.right, style: TextStyles.bold16),
      subtitle: Text(
        'حسن حموده',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: const Color(
            0xFF949D9E,
          ),
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(12),
        decoration: const ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
    );
  }
}
