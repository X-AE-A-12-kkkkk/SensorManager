import 'package:flutter/material.dart';
import 'package:payflow2/shared/themes/app_colors.dart';
import 'package:payflow2/shared/themes/app_images.dart';
import 'package:payflow2/shared/themes/app_text_styles.dart';

class GoogleLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoogleLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border:
                const Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(AppImages.google),
                const SizedBox(width: 16),
                Container(
                  height: 56,
                  width: 1,
                  color: AppColors.stroke,
                )
              ])),
          Expanded(
              flex: 4,
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Entrar com Google", style: TextStyles.buttonGray)
              ])),
          Expanded(
            child: Container(),
          )
        ]),
      ),
    );
  }
}
