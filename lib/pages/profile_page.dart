import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/floating_botom.dart';
import 'package:mountca/widget/profile_card.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingBotom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: semiLightGreyColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Your Profile',
                    style: boldStyle.copyWith(
                      fontSize: 20,
                      color: semiBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/profile6.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Queen Alyssa',
                    style: boldStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: semiBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'alyssayang@gmail.com',
                    style: regularStyle.copyWith(
                      fontSize: 14,
                      color: semiDarkGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  ProfileCard(
                    imageUrl: 'assets/user_profile.png',
                    menuName: 'Edit Profile',
                    backgroundCard: yellowColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileCard(
                    imageUrl: 'assets/payment.png',
                    menuName: 'Payment Method',
                    backgroundCard: greenColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileCard(
                    imageUrl: 'assets/gift.png',
                    menuName: 'Invite a friend',
                    backgroundCard: Colors.lightBlueAccent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileCard(
                    imageUrl: 'assets/setting.png',
                    menuName: 'Settings',
                    backgroundCard: Colors.blue,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileCard(
                    imageUrl: 'assets/cs.png',
                    menuName: 'Help Center',
                    backgroundCard: lightPurpleColor,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.login_outlined,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Log Out',
                        style: regularStyle.copyWith(
                          fontSize: 16,
                          color: redColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
