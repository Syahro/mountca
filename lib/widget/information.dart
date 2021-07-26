import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';

class Information extends StatelessWidget {
  final String info;
  final Color colorType;

  Information({
    this.info,
    this.colorType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: 16,
      decoration: BoxDecoration(
        color: colorType.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          info,
          style: boldStyle.copyWith(
            fontSize: 8,
            color: colorType,
          ),
        ),
      ),
    );
  }
}
