import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/active_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/in_active_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            text: bottomNavigationBarEntity.name,
            image: bottomNavigationBarEntity.activeImage,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
