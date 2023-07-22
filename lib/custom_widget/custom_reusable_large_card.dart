import 'package:flutter/material.dart';

class ReusableLargeCard extends StatelessWidget {
  const ReusableLargeCard({
    super.key,
    required this.largeCardChild,
    required this.containerHeight,
    required this.containerWidth,
    required this.containerImage,
  });

  final Widget? largeCardChild;
  final double? containerHeight;
  final double? containerWidth;
  final String? containerImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 40),
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: containerImage != null
            ? DecorationImage(
                image: AssetImage(containerImage!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: largeCardChild,
    );
  }
}
