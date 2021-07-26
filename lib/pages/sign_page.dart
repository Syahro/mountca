import 'package:flutter/material.dart';
import 'package:mountca/pages/mount_page.dart';
import 'package:mountca/theme.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/baner.png',
                  width: double.infinity,
                  height: 210,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Get started for free',
                style: boldStyle.copyWith(
                  fontSize: 24,
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Have an account? ',
                  style: regularStyle.copyWith(
                    fontSize: 16,
                    color: semiBlackColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'Log In',
                      style: semiBoldStyle.copyWith(
                        fontSize: 16,
                        color: purpleColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: semiDarkGreyColor.withOpacity(0.6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            width: 16,
                            height: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sign up with Google',
                            style: semiBoldStyle.copyWith(
                              fontSize: 16,
                              color: semiBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'or',
                        style: regularStyle.copyWith(
                          fontSize: 14,
                          color: semiBlackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email',
                      style: regularStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: lightGreyColor.withOpacity(0.3),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'mountca@gmail.com',
                              style: regularStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Create Password',
                      style: regularStyle.copyWith(
                        fontSize: 16,
                        color: semiBlackColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: darkGreyColor,
                        ),
                      ),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 18,
                                width: 1,
                                color: semiBlackColor,
                              ),
                              Icon(
                                Icons.visibility_off,
                                color: darkGreyColor,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MountPage();
                              },
                            ),
                          );
                        },
                        color: purpleColor,
                        child: Text(
                          'Create Account',
                          style: semiBoldStyle.copyWith(
                            fontSize: 16,
                            color: whiteColor,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 76,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
