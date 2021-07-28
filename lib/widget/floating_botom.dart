import 'package:flutter/material.dart';
import 'package:mountca/pages/search_page.dart';
import 'package:mountca/theme.dart';

class FloatingBotom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1),
            blurRadius: 13,
            spreadRadius: 13,
            offset: Offset(1, 7),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/home.png',
              width: 20,
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
              child: Image.asset(
                'assets/search.png',
                width: 20,
                height: 20,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/maps.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/user.png',
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
