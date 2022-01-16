import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundCOlor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 50),
                Image.asset(
                  'assets/images/primary.png',
                  height: 140,
                  width: 140,
                ),
                SizedBox(height: 16),
                Text(
                  'Anne Margaretha',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'UX Designer',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/item1.png', width: 80),
                      Image.asset('assets/images/item2.png', width: 80),
                      Image.asset('assets/images/item3.png', width: 80),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/item4.png', width: 80),
                      Image.asset('assets/images/item5.png', width: 80),
                      Image.asset('assets/images/item6.png', width: 80),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: 224,
                    height: 55,
                    child: MaterialButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 290,
                              decoration: const BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 50,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Update Photo',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'You are only able to change\nthe picture profile once',
                                    style: TextStyle(
                                      color: greyColor,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 224,
                                    height: 55,
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      color: orangeColor,
                                      onPressed: () {},
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Update Profile',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 76),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
