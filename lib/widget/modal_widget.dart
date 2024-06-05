import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changing/feature/theme/domain/theme_controller.dart';
import 'package:theme_changing/uikit/text/text_data.dart';
import 'package:theme_changing/util/extensions.dart';
import 'package:theme_changing/util/images.dart';
import 'package:theme_changing/util/theme_name.dart';
import 'package:theme_changing/widget/pallete_widget.dart';

class ModalBottomSheetWidget extends StatefulWidget {
  const ModalBottomSheetWidget({super.key, required this.initThemeType});
  final AppTheme initThemeType;

  @override
  State<ModalBottomSheetWidget> createState() => _ModalBottomSheetWidgetState();
}

class _ModalBottomSheetWidgetState extends State<ModalBottomSheetWidget> {
  late AppTheme themeType = widget.initThemeType;

  void _onSortTypeChanged(AppTheme? value) {
    setState(() {
      themeType = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle bodyMediumStyle = AppTextTheme.bodyMedium
        .copyWith(color: context.colors.textFieldInitColor);
    return Wrap(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 24, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Тема оформления',
                    style: AppTextTheme.labelLarge
                        .copyWith(color: context.colors.textFieldInitColor),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.close,
                      color: context.colors.saveColor,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            RadioListTile(
              title: Text(
                'Системная',
                style: bodyMediumStyle,
              ),
              value: AppTheme.system,
              groupValue: themeType,
              onChanged: _onSortTypeChanged,
            ),
            RadioListTile(
              title: Text(
                'Светлая',
                style: bodyMediumStyle,
              ),
              value: AppTheme.light,
              groupValue: themeType,
              onChanged: _onSortTypeChanged,
            ),
            if (themeType == AppTheme.light ||
                themeType == AppTheme.lightOrange ||
                themeType == AppTheme.lightBlue)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PalleteWidget(
                    image: Images.iconGreen,
                    text: 'Схема 1',
                    isSelected: themeType == AppTheme.light,
                    onTap: () {
                      _onSortTypeChanged(AppTheme.light);
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  PalleteWidget(
                    image: Images.iconBlue,
                    text: 'Схема 2',
                    isSelected: themeType == AppTheme.lightBlue,
                    onTap: () {
                      _onSortTypeChanged(AppTheme.lightBlue);
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  PalleteWidget(
                    image: Images.iconOrange,
                    text: 'Схема 3',
                    isSelected: themeType == AppTheme.lightOrange,
                    onTap: () {
                      _onSortTypeChanged(AppTheme.lightOrange);
                    },
                  ),
                ],
              ),
            RadioListTile(
              title: Text(
                'Темная',
                style: bodyMediumStyle,
              ),
              value: AppTheme.dark,
              groupValue: themeType,
              onChanged: _onSortTypeChanged,
            ),
            if (themeType == AppTheme.dark ||
                themeType == AppTheme.darkOrange ||
                themeType == AppTheme.darkBlue)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PalleteWidget(
                    image: Images.iconGreen,
                    text: 'Схема 1',
                    isSelected: themeType == AppTheme.dark,
                    onTap: () {
                      _onSortTypeChanged(AppTheme.dark);
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  PalleteWidget(
                    image: Images.iconBlue,
                    text: 'Схема 2',
                    isSelected: themeType == AppTheme.darkBlue,
                    onTap: () {
                      _onSortTypeChanged(AppTheme.darkBlue);
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  PalleteWidget(
                    image: Images.iconOrange,
                    text: 'Схема 3',
                    isSelected: themeType == AppTheme.darkOrange,
                    onTap: () {
                      _onSortTypeChanged(AppTheme.darkOrange);
                    },
                  ),
                ],
              ),
            const SizedBox(
              height: 25,
            ),
            Consumer<ThemeController>(
              builder: (context, ThemeController themeController, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 335,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          themeType,
                        );
                        themeController.setTheme(themeType);
                      },
                      child: const Text(
                        'Готово',
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ],
    );
  }
}
