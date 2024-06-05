import 'package:flutter/material.dart';
import 'package:theme_changing/util/extensions.dart';

class TextfieldWidget extends StatelessWidget {
  final String initValue;
  final String text;
  final bool isAction;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  const TextfieldWidget(
      {super.key,
      required this.initValue,
      required this.text,
      this.isAction = false,
      this.onTap,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        initialValue: initValue,
        controller: controller,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: context.colors.textFieldInitColor),
        readOnly: true,
        decoration: InputDecoration(
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(16)),
          labelText: text,
          suffix: isAction
              ? InkWell(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(Icons.chevron_right_outlined,
                        color: context.colors.saveColor),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
