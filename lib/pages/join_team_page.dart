import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/team_card.dart';

class JoinTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiLightGreyColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    TeamCard(
                      imageUrl: 'assets/profile1.png',
                      leaderName: 'Bakrie Suparno',
                      teamCount: '3/6',
                      mountName: 'Gunung Semeru',
                      mountTrack: 'via Ranu Pane',
                      timeDepart: 'Sen, 2 Mei 2021 07:00 WIB',
                      timeArrive: 'Rab, 4 Mei 2021 15:00 WIB',
                      price: '19.000',
                      isFreeDay: false,
                      isFull: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TeamCard(
                      imageUrl: 'assets/profile2.png',
                      leaderName: 'Afika Iyaa',
                      teamCount: '6/6',
                      mountName: 'Gunung Merbabu',
                      mountTrack: 'via Selo',
                      timeDepart: 'Min, 10 Juni 2021 07:00 WIB',
                      timeArrive: 'Sel, 12 Juni 2021 15:00 WIB',
                      price: '21.000',
                      isFreeDay: true,
                      isFull: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                defaultMargin + 6,
                20,
                defaultMargin + 6,
                20,
              ),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(color: semiLightGreyColor
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: blackColor.withOpacity(0.1),
                  //     blurRadius: 1,
                  //     spreadRadius: 1,
                  //     offset: Offset(0, 1),
                  //   ),
                  // ],
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                  ),
                  Text(
                    'Gunung Semeru',
                    style: boldStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.tune,
                    color: purpleColor,
                    size: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
