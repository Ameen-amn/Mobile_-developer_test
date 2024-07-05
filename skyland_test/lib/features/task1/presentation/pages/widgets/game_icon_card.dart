import 'package:flutter/material.dart';
import 'package:skyland_test/core/const/const_colors.dart';

class GameIconCard extends StatelessWidget {
  final String assetImage;
  final bool selectedSign;
  final VoidCallback onTap;
  const GameIconCard({
    super.key,
    required this.assetImage,
    required this.selectedSign,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      highlightColor: Colors.transparent,
      splashColor: selectedSign
          ? ColorConstants.kBorderGreen.withOpacity(0.18)
          : Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(
                width: selectedSign ? 3.2 : 1.6,
                color: selectedSign
                    ? ColorConstants.kBorderGreen
                    : ColorConstants.kBorderblack),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Image.asset(assetImage),
      ),
    );
  }
}
