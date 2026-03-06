import 'package:flutter/material.dart';
import 'package:training/l10n/app_localizations.dart';
import 'package:training/widgets/home/tab_item.dart';

class MyTabBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const MyTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
           TabItem(
            title:AppLocalizations.of(context)!.popular,
            selected: selectedIndex == 0,
            onTap: () => onTabSelected(0),
          ),
          TabItem(
            title:AppLocalizations.of(context)!.trending,
            selected: selectedIndex == 1,
            onTap: () => onTabSelected(1),
          ),
          TabItem(
            title:AppLocalizations.of(context)!.follow ,
            selected: selectedIndex == 2,
            onTap: () => onTabSelected(2),
          ),
        ],
      ),
    );
  }
}

