import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constant/colors.dart';

class AuthViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthViewAppBar({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.backgroundcolor,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: AppColor.backgroundcolor),
      elevation: 0,
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: AppColor.grey),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
