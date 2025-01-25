import 'package:flutter/material.dart';
import 'package:flutter_clean_code/common/widgets_base/mk_myanmar_text.dart';
import '../../utils/constants/app_colors.dart';
import 'base_back_pressed.dart';

class BaseAppbar extends StatelessWidget implements PreferredSizeWidget {

  final Color backgroundColor = AppColors.primary;
  final String title;
  final List<Widget> actions;

  const BaseAppbar({super.key, required this.title,required this.actions});

  @override
  Widget build(BuildContext context)  => AppBar(
    title: MKMyanmarText(text: title.toString(), size: 14, color: Colors.white, isBold: true),
    backgroundColor: backgroundColor,
    leading:  const BaseBackPressed(),
    actions: actions,
  );

  @override
  Size get preferredSize =>  Size.fromHeight(AppBar().preferredSize.height);

}
