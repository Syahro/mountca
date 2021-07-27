import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';
import 'package:mountca/widget/trip_duration_info.dart';

class TeamCard extends StatelessWidget {
  final String imageUrl;
  final String leaderName;
  final String teamCount;
  final String mountName;
  final String mountTrack;
  final String timeDepart;
  final String timeArrive;
  final String price;
  final bool isFreeDay;
  final bool isFull;

  TeamCard({
    this.imageUrl,
    this.leaderName,
    this.teamCount,
    this.mountName,
    this.mountTrack,
    this.timeDepart,
    this.timeArrive,
    this.price,
    this.isFreeDay,
    this.isFull,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      height: 369,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ketua',
                      style: regularStyle.copyWith(
                        fontSize: 12,
                        color: semiDarkGreyColor,
                      ),
                    ),
                    Text(
                      leaderName,
                      style: boldStyle.copyWith(
                        fontSize: 14,
                        color: semiBlackColor,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                isFull
                    ? Container(
                        padding: EdgeInsets.fromLTRB(
                          10,
                          5,
                          10,
                          5,
                        ),
                        decoration: BoxDecoration(
                          color: greenColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Center(
                          child: Text(
                            'Full Team',
                            style: regularStyle.copyWith(
                              fontSize: 10,
                              color: greenColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    : Text.rich(
                        TextSpan(
                            text: teamCount,
                            style: boldStyle.copyWith(
                              fontSize: 14,
                              color: yellowColor,
                            ),
                            children: [
                              TextSpan(
                                text: ' anggota',
                                style: regularStyle.copyWith(
                                  fontSize: 12,
                                  color: semiDarkGreyColor,
                                ),
                              ),
                            ]),
                      ),
              ],
            ),
          ),
          DottedLine(
            dashColor: semiDarkGreyColor.withOpacity(0.4),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mountName,
                  style: boldStyle.copyWith(
                    fontSize: 17,
                    color: semiBlackColor,
                  ),
                ),
                Text(
                  mountTrack,
                  style: regularStyle.copyWith(
                      fontSize: 12, color: semiDarkGreyColor),
                ),
                SizedBox(
                  height: 15,
                ),
                TripDurationInfo(
                  infoTrip: 'Berangkat',
                  timeTrip: timeDepart,
                  isArrive: false,
                  isFreeDay: isFreeDay,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 30,
                  child: DottedLine(
                    direction: Axis.vertical,
                    dashColor: semiDarkGreyColor.withOpacity(0.7),
                  ),
                ),
                TripDurationInfo(
                  infoTrip: 'Pulang',
                  timeTrip: timeArrive,
                  isArrive: true,
                  isFreeDay: isFreeDay,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 23,
                width: 13,
                decoration: BoxDecoration(
                  color: semiLightGreyColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 25) - (2 * 13),
                child: DottedLine(
                  dashColor: semiDarkGreyColor.withOpacity(0.4),
                ),
              ),
              Container(
                height: 23,
                width: 13,
                decoration: BoxDecoration(
                  color: semiLightGreyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
              top: 10,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Rp $price',
                    style: boldStyle.copyWith(
                      fontSize: 18,
                      color: purpleColor,
                    ),
                    children: [
                      TextSpan(
                        text: '\n/ orang',
                        style: regularStyle.copyWith(
                          fontSize: 12,
                          color: semiDarkGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 135,
                  child: RaisedButton(
                    onPressed: () {},
                    color: isFull ? lightPurpleColor : purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Gabung tim',
                      style: boldStyle.copyWith(
                        fontSize: 14,
                        color:
                            isFull ? whiteColor.withOpacity(0.7) : whiteColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
