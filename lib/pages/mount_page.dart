import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/mount_card.dart';

class MountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiLightGreyColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            defaultMargin,
            20,
            defaultMargin,
            0,
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: 94,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '14',
                      style: semiBoldStyle.copyWith(
                        fontSize: 12,
                        color: purpleColor,
                      ),
                      children: [
                        TextSpan(
                          text: ' gunung di ',
                          style: regularStyle.copyWith(
                            fontSize: 12,
                            color: darkGreyColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Jawa',
                          style: boldStyle.copyWith(
                            fontSize: 12,
                            color: darkGreyColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                    height: 30,
                  ),
                  MountCard(
                    imageUrl: 'assets/lawu.png',
                    isAny: false,
                    isAnyTeam: false,
                    mountName: 'Gunung Lawu',
                    countHikers: 5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: semiLightGreyColor,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: semiLightGreyColor,
                              child: Icon(
                                Icons.arrow_back,
                                color: semiBlackColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
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
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.search,
                                        color: darkGreyColor,
                                      ),
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
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
