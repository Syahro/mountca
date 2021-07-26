import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/information.dart';

class MountCard extends StatelessWidget {
  final String imageUrl;
  final bool isAny;
  final bool isAnyTeam;
  final String mountName;
  final int countHikers;

  MountCard({
    this.imageUrl,
    this.isAny,
    this.isAnyTeam,
    this.mountName,
    this.countHikers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 184,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              15,
              15,
              15,
              10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    width: 70,
                    height: 70,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        isAny
                            ? isAnyTeam
                                ? Information(
                                    info: 'Kuota Tersedia',
                                    colorType: greenColor,
                                  )
                                : Row(
                                    children: [
                                      Information(
                                        info: 'Kuota Tersedia',
                                        colorType: greenColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Information(
                                        info: 'Belum ada tim',
                                        colorType: yellowColor,
                                      ),
                                    ],
                                  )
                            : Information(
                                info: 'Tutup',
                                colorType: redColor,
                              ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      mountName,
                      style: boldStyle.copyWith(
                        fontSize: 16,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text.rich(
                      TextSpan(
                          text: '$countHikers pendaki',
                          style: boldStyle.copyWith(
                            fontSize: 12,
                            color: purpleColor,
                          ),
                          children: [
                            TextSpan(
                              text: ' / tim',
                              style: regularStyle.copyWith(
                                fontSize: 8,
                                color: darkGreyColor,
                              ),
                            )
                          ]),
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.error_outline,
                  color: darkGreyColor.withOpacity(0.5),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Durasi',
                  style: regularStyle.copyWith(
                    fontSize: 10,
                    color: darkGreyColor,
                  ),
                ),
                Text(
                  '2 hari 1 malam',
                  style: boldStyle.copyWith(
                    fontSize: 10,
                    color: semiBlackColor,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: semiDarkGreyColor.withOpacity(0.13),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Buat tim',
                        style: boldStyle.copyWith(
                          fontSize: 12,
                          color: isAny
                              ? isAnyTeam
                                  ? purpleColor
                                  : purpleColor
                              : darkGreyColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: isAny
                            ? isAnyTeam
                                ? purpleColor
                                : lightPurpleColor
                            : lightPurpleColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Gabung tim',
                          style: boldStyle.copyWith(
                            fontSize: 12,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
