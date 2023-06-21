import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:monews_application/constants/constants.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int _selectedItem = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _headerItem(),
            ),
            SliverToBoxAdapter(
              child: _horizontalItem(),
            ),
            SliverToBoxAdapter(
              child: _horizontalContainersList(),
            ),
            SliverToBoxAdapter(
              child: _rowContent(),
            ),
            SliverToBoxAdapter(
              child: _horizontalItemContainer(),
            ),
            SliverToBoxAdapter(
              child: _secondHeader(),
            ),
            SliverToBoxAdapter(
              child: _lastHorizontalContainerItem(),
            ),
            SliverToBoxAdapter(
              child: _subtitle(),
            ),
          ],
        ),
      ),
    );
  }

  Container _subtitle() {
    return Container(
      color: CustomColor.blueaceent,
      height: 48,
      child: Marquee(
        text:
            '...    طارمی با ایران مذاکره نداشته است  ...  قرار داد ناقص مسی با بارسا به او ضرر زد',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: 'SM',
          fontSize: 16,
          color: Colors.white,
        ),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }

  Padding _secondHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 20,
        top: 32,
      ),
      child: Row(
        children: [
          Text(
            'مشاهده بیشتر',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontFamily: 'SM',
            ),
          ),
          Spacer(),
          Text(
            'پیشنهاد سردبیر',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'SM',
            ),
          ),
        ],
      ),
    );
  }

  Directionality _lastHorizontalContainerItem() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Container(
                width: 270,
                height: 160,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            'images/Rectangle 25.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff313666),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 16,
                            ),
                            child: Text(
                              'علمی پزشکی',
                              style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Directionality _horizontalItemContainer() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                right: 24,
                left: 20,
              ),
              width: 133,
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xff262837),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Image.asset('images/Ellipse2.png'),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'زومیت',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SM',
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(82, 99, 252, 0.24),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19,
                        vertical: 7,
                      ),
                      child: Text(
                        'دنبال کردن',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SM',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Padding _rowContent() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 46,
        bottom: 20,
        top: 32,
      ),
      child: Row(
        children: [
          Text(
            'مشاهده بیشتر',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontFamily: 'SM',
            ),
          ),
          Spacer(),
          Text(
            'خبرگزاری‌ها',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'SM',
            ),
          ),
        ],
      ),
    );
  }

  Directionality _horizontalContainersList() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 53,
        child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedItem = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 24,
                ),
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: _selectedItem == index
                        ? Color(0xff313666)
                        : CustomColor.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    child: Text(
                      'همه',
                      style: TextStyle(
                        fontSize: 15,
                        color: CustomColor.white,
                        fontFamily: 'SM',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _horizontalItem() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 32,
      ),
      child: Container(
        width: 380,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff28007D),
              Color(0xff570080),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 16,
                right: 29,
              ),
              child: Text(
                'خبرهایی که باید ببینید',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: 'SM',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 29,
                bottom: 16,
              ),
              child: Text(
                'نگاهی به جذاب ترین خبرهای 7 روز گذشته',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                  color: CustomColor.grey,
                  fontFamily: 'SM',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3,
                    left: 20,
                  ),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset('images/check-list.png'),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 29),
                  width: 67,
                  height: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                    color: Color(0xff5263FC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'مشاهده',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColor.white,
                        fontFamily: 'SM',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerItem() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 26,
        top: 22,
        bottom: 35,
      ),
      child: Row(
        children: [
          Image.asset('images/Vector.png'),
          SizedBox(
            width: 30,
          ),
          Image.asset('images/filter-edit.png'),
          SizedBox(
            width: 80,
          ),
          SizedBox(
            width: 70,
            height: 34,
            child: Image.asset('images/monews1.png'),
          ),
        ],
      ),
    );
  }
}
