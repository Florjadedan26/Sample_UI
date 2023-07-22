import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insurancescam/constant.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key,
    this.onPresViewMore,
    this.onCheckHeart,
    required this.infoTextPrimary,
    required this.infoTextSecondary,
  });

  final VoidCallback? onPresViewMore;
  final VoidCallback? onCheckHeart;
  final String? infoTextPrimary;
  final String? infoTextSecondary;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(infoTextPrimary!, style: kInfoTextLabel),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onPresViewMore,
                child: Text(infoTextSecondary!, style: kInfoTextLabel),
              ),
              GestureDetector(
                onTap: onCheckHeart,
                child: const Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
