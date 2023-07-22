import 'package:flutter/material.dart';


class ReusableSmallCard extends StatelessWidget {
  const ReusableSmallCard({
    Key? key,
    required this.cardChild,
    required this.containerHeight,
    required this.containerWidth,
    this.customBoxColor,
    this.onChick,
    this.titleText,
  }) : super(key: key);

  final Color? customBoxColor;
  final Widget? cardChild;
  final VoidCallback? onChick;
  final String? titleText;
  final double? containerHeight;
  final double? containerWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: onChick,
        child: Column(
          children: [
            Container(
              height: containerHeight,
              width: containerWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: customBoxColor,
              ),
              child: cardChild,
            ),
            const SizedBox(height: 10,),
            Text(titleText!),
          ],
        ),
      ),
    );
  }
}
