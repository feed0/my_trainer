import 'package:flutter/material.dart';

import '/models/brand.dart';

class PageTitle extends StatelessWidget {
  final String text;

  const PageTitle(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: const TextStyle(
          color: Brand.primary,
          fontSize: 50,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
        ),
      ),
    );
  }
}
