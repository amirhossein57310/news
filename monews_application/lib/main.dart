import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:monews_application/screens/detail_news_screen.dart';
import 'package:monews_application/screens/home_screen.dart';
import 'package:monews_application/screens/news_screen.dart';
import 'package:monews_application/screens/splash_screen.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MonewsApplication());
}

class MonewsApplication extends StatefulWidget {
  const MonewsApplication({Key? key}) : super(key: key);

  @override
  State<MonewsApplication> createState() => _MonewsApplicationState();
}

class _MonewsApplicationState extends State<MonewsApplication> {
  double left = 0;
  int currentIndexNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: currentIndexNavigation,
          children: screens(),
        ),
        backgroundColor: CustomColor.black,
        bottomNavigationBar: Container(
          height: 83,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: BottomNavigationBar(
                      onTap: (int index) {
                        setState(() {
                          currentIndexNavigation = index;
                        });
                      },
                      currentIndex: currentIndexNavigation,
                      type: BottomNavigationBarType.fixed,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      items: [
                        BottomNavigationBarItem(
                          icon: Image.asset('images/icon_profile.png'),
                          label: ' ',
                          activeIcon: Column(
                            children: [
                              Container(
                                width: 38,
                                height: 6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue,
                                      blurRadius: 3,
                                      spreadRadius: -5,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Image.asset(
                                    'images/icon_profile_active.png'),
                              ),
                            ],
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset('images/icon_basket.png'),
                          activeIcon: Column(
                            children: [
                              Container(
                                width: 38,
                                height: 6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue,
                                      blurRadius: 3,
                                      spreadRadius: -5,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Image.asset(
                                    'images/icon_basket_active.png'),
                              ),
                            ],
                          ),
                          label: ' ',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset('images/icon_category.png'),
                          activeIcon: Column(
                            children: [
                              Container(
                                width: 38,
                                height: 6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue,
                                      blurRadius: 3,
                                      spreadRadius: -5,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Image.asset(
                                    'images/icon_category_active.png'),
                              ),
                            ],
                          ),
                          label: ' ',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset('images/icon_home.png'),
                          activeIcon: Column(
                            children: [
                              Container(
                                width: 38,
                                height: 6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue,
                                      blurRadius: 3,
                                      spreadRadius: -5,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child:
                                    Image.asset('images/icon_home_active.png'),
                              ),
                            ],
                          ),
                          label: ' ',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset('images/discover.png'),
                          activeIcon: Column(
                            children: [
                              Container(
                                width: 38,
                                height: 6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue,
                                      blurRadius: 3,
                                      spreadRadius: -5,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child:
                                    Image.asset('images/discover-active.png'),
                              ),
                            ],
                          ),
                          label: '',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 134,
                height: 5,
                decoration: BoxDecoration(
                  color: CustomColor.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> screens() {
    return <Widget>[
      SplashScreen(),
      HomeScreen(),
      DetailNewsScreen(),
      NewsScreen(),
      HomeScreen(),
    ];
  }
}
