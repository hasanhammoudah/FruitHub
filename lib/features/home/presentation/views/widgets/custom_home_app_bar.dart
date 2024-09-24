import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/get_user.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

class CutomHomeAppBar extends StatelessWidget {
  const CutomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: const Color(
            0xFF949D9E,
          ),
        ),
      ),
      subtitle: Text(getUser().name,
          textAlign: TextAlign.right, style: TextStyles.bold16),
      trailing: const NotificationWidget(),
    );
  }
}
