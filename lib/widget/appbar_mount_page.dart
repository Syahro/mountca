import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';

class AppbarMountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Icon(
            Icons.arrow_back,
            color: semiBlackColor,
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 8,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: darkGreyColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cari nama gunung',
                    style: regularStyle.copyWith(
                      fontSize: 12,
                      color: darkGreyColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.tune,
                    color: purpleColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
