import 'package:flutter/material.dart';
import 'package:flutter_app1/styles/app_colors.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({super.key, required this.title, this.actions});
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        
        backgroundColor: AppColors.background,
        shadowColor: Colors.black,
        surfaceTintColor: AppColors.background,
        title: Text(title),
        elevation: 4.0,
        centerTitle: false,
        actions:actions,
      );
  }
}