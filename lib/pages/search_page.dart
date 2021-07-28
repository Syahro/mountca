import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/floating_botom.dart';
import 'package:mountca/widget/mount_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingBotom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: semiLightGreyColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 115,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pencarian Terkini',
                            style: boldStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Hapus semua',
                            style: regularStyle.copyWith(
                              fontSize: 12,
                              color: semiDarkGreyColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Merapi',
                        style: regularStyle.copyWith(
                          fontSize: 14,
                          color: semiDarkGreyColor,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Carstensz',
                        style: regularStyle.copyWith(
                          fontSize: 12,
                          color: semiDarkGreyColor,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Bromo',
                        style: regularStyle.copyWith(
                          fontSize: 12,
                          color: semiDarkGreyColor,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Populer hari ini',
                        style: boldStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MountCard(
                        imageUrl: 'assets/semeru.png',
                        isAny: true,
                        isAnyTeam: true,
                        mountName: 'Gunung Semeru',
                        countHikers: 3,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MountCard(
                        imageUrl: 'assets/prau.png',
                        isAny: true,
                        isAnyTeam: false,
                        mountName: 'Gunung Prau',
                        countHikers: 6,
                      ),
                      SizedBox(
                        height: 159,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: semiLightGreyColor, boxShadow: [
                BoxShadow(
                  color: darkGreyColor.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 5,
                  offset: Offset(2, 4),
                )
              ]),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  defaultMargin,
                  20,
                  defaultMargin,
                  15,
                ),
                child: Container(
                  padding: EdgeInsets.all(18),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/search.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 15,
                        width: 1,
                        color: semiDarkGreyColor,
                      ),
                      Text(
                        'Cari nama gunung',
                        style: regularStyle.copyWith(
                          fontSize: 12,
                          color: semiDarkGreyColor,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.close,
                        color: semiDarkGreyColor,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
