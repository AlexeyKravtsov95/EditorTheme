import 'package:flutter/material.dart';
import 'package:theme_changing/util/extensions.dart';

class PalleteWidget extends StatelessWidget {
  const PalleteWidget({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  final String image;
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: 103,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? context.colors.saveColor : Colors.transparent,
          ),
          color: context.colors.dropBackgroundColor,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(image),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: context.colors.textFieldInitColor),
            ),
          ],
        ),
      ),
    );
  }
}
