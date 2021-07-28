import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String menuName;
  final Color backgroundCard;

  ProfileCard({
    this.imageUrl,
    this.menuName,
    this.backgroundCard,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: backgroundCard.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 20,
                    height: 25,
                    color: backgroundCard,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                menuName,
                style: boldStyle.copyWith(
                  fontSize: 16,
                  color: semiBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
