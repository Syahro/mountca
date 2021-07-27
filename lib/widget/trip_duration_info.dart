import 'package:flutter/material.dart';
import 'package:mountca/theme.dart';

class TripDurationInfo extends StatelessWidget {
  final String infoTrip;
  final String timeTrip;
  final bool isArrive;
  final bool isFreeDay;

  TripDurationInfo({
    this.infoTrip,
    this.timeTrip,
    this.isArrive,
    this.isFreeDay,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: isArrive ? semiLightGreyColor : purpleColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Icon(
              Icons.location_on_outlined,
              size: 15,
              color: isArrive ? darkGreyColor : whiteColor,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  infoTrip,
                  style: regularStyle.copyWith(
                    fontSize: 12,
                    color: semiDarkGreyColor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                isArrive
                    ? SizedBox(
                        width: 0,
                      )
                    : isFreeDay
                        ? Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: redColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Hari Libur',
                                style: regularStyle.copyWith(
                                  fontSize: 8,
                                  color: redColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : SizedBox(
                            width: 0,
                          ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              timeTrip,
              style: regularStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: semiBlackColor.withOpacity(0.7),
              ),
            )
          ],
        )
      ],
    );
  }
}
