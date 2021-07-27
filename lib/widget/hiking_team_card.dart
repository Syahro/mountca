import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';

class HikingTeamCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final bool noted;

  HikingTeamCard({
    this.imageUrl,
    this.name,
    this.location,
    this.noted,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        width: 328,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: boldStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: semiBlackColor,
                      ),
                    ),
                    Text(
                      location,
                      style: regularStyle.copyWith(
                        fontSize: 12,
                        color: darkGreyColor,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  noted ? 'Siap!' : '',
                  style: boldStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: purpleColor,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
