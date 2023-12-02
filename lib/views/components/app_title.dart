import 'package:flutter/material.dart';
import '/models/brand.dart';
import 'page_title.dart';

class AppTitle extends StatefulWidget implements PreferredSizeWidget {
  final String pageTitle;

  const AppTitle(this.pageTitle, {Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

class _AppTitleState extends State<AppTitle> {
  late String pageTitle;

  @override
  void initState() {
    super.initState();
    pageTitle = widget.pageTitle;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Brand.background,
      toolbarHeight: 75,
      title: PageTitle(pageTitle),
    );
  }
}
