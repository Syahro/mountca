import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/floating_botom.dart';
import 'package:mountca/widget/hiking_team_card.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiLightGreyColor,
      floatingActionButton: FloatingBotom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                defaultMargin,
                30,
                defaultMargin,
                30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: darkGreyColor.withOpacity(0.1),
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        15,
                        17,
                        15,
                        17,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 31,
                            width: 31,
                            decoration: BoxDecoration(
                              color: lightGreyColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.landscape_outlined,
                                color: purpleColor,
                                size: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gunung Semeru',
                                style: boldStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: semiBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'via Ranu Pane',
                                style: regularStyle.copyWith(
                                  fontSize: 12,
                                  color: semiDarkGreyColor,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 25,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: purpleColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Detail',
                                style: boldStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DottedLine(
                    dashColor: darkGreyColor.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 36,
                        width: 264,
                        decoration: BoxDecoration(
                          color: greenColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: 'Yeay, Kamu sudah bisa ',
                                    style: regularStyle.copyWith(
                                      fontSize: 12,
                                      color: greenColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'booking sekarang!',
                                        style: boldStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: greenColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 112),
                                  height: 1,
                                  width: 93,
                                  color: greenColor,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ketua',
                    style: boldStyle.copyWith(
                      fontSize: 14,
                      color: darkGreyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HikingTeamCard(
                    imageUrl: 'assets/profile1.png',
                    name: 'Bakrie Suparno',
                    location: 'Jawa Tengah',
                    noted: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Anggota ',
                          style: boldStyle.copyWith(
                            fontSize: 14,
                            color: darkGreyColor,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: '(Full)',
                              style: boldStyle.copyWith(
                                fontSize: 12,
                                color: purpleColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Hapus',
                        style: regularStyle.copyWith(
                          fontSize: 12,
                          color: redColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HikingTeamCard(
                    imageUrl: 'assets/profile3.png',
                    name: 'Andriana Kusuma',
                    location: 'Jawa Tengah',
                    noted: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HikingTeamCard(
                    imageUrl: 'assets/profile4.png',
                    name: 'Geri Santoso',
                    location: 'Bali',
                    noted: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HikingTeamCard(
                    imageUrl: 'assets/profile2.png',
                    name: 'Sinta Rantyah',
                    location: 'Jawa Timur',
                    noted: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HikingTeamCard(
                    imageUrl: 'assets/profile5.png',
                    name: 'Dodit Kewer',
                    location: 'Jogjakarta',
                    noted: true,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Batalkan pendakian',
                        style: regularStyle.copyWith(
                          fontSize: 14,
                          color: darkGreyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    color: whiteColor,
                    child: RaisedButton(
                      onPressed: () {},
                      color: semiLightGreyColor.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Pesan sekarang',
                        style: boldStyle.copyWith(
                          fontSize: 14,
                          color: purpleColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Tim kamu lengkap, ',
                      style: regularStyle.copyWith(
                        fontSize: 12,
                        color: greenColor.withOpacity(0.8),
                      ),
                      children: [
                        TextSpan(
                          text: 'tunggu apa lagi?',
                          style: boldStyle.copyWith(
                            fontSize: 12,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
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
