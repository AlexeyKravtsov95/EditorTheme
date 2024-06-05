import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changing/feature/theme/domain/theme_controller.dart';
import 'package:theme_changing/util/constants.dart';
import 'package:theme_changing/util/extensions.dart';
import 'package:theme_changing/util/get_theme.dart';
import 'package:theme_changing/widget/avatar_widget.dart';
import 'package:theme_changing/widget/medal_widget.dart';
import 'package:theme_changing/widget/modal_widget.dart';
import 'package:theme_changing/widget/textfield_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final TextStyle? titleMedium = Theme.of(context).textTheme.titleMedium;
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text(AppConst.profileTitle),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppConst.saveTitle,
                  style: titleMedium!.copyWith(color: context.colors.saveColor),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 28,
          bottom: 40,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AvatarWidget(),
              const SizedBox(height: 28),
              Text(
                AppConst.myAwards,
                style: titleMedium.copyWith(
                    color: context.colors.secondaryTextColor),
              ),
              const SizedBox(height: 5),
              const MedalWidget(),
              const SizedBox(height: 10),
              const TextfieldWidget(
                  initValue: AppConst.userName, text: AppConst.nameLabel),
              const SizedBox(height: 8),
              const TextfieldWidget(
                  initValue: AppConst.userEmail, text: AppConst.emailLabel),
              const SizedBox(height: 8),
              const TextfieldWidget(
                  initValue: AppConst.userBirthday,
                  text: AppConst.birthdayLabel),
              const SizedBox(height: 8),
              const TextfieldWidget(
                  initValue: AppConst.userTeam,
                  text: AppConst.teamLabel,
                  isAction: true),
              const SizedBox(height: 8),
              const TextfieldWidget(
                initValue: AppConst.userPosition,
                text: AppConst.positionLabel,
                isAction: true,
              ),
              const SizedBox(height: 8),
              Consumer<ThemeController>(
                builder: (context, ThemeController themeController, child) {
                  return TextfieldWidget(
                    initValue: getThemeName(themeController.theme),
                    key: ValueKey(themeController.theme),
                    text: 'Тема оформления',
                    isAction: true,
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return ModalBottomSheetWidget(
                              initThemeType: themeController.theme,
                            );
                          });
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
