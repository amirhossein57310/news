import 'package:flutter/material.dart';
import 'package:monews_application/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                color: CustomColor.black,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'images/notification-status.png',
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    SizedBox(
                      height: 50,
                      width: 62,
                      child: Image.asset(
                        'images/monews1.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBarView(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 24, left: 24, bottom: 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'مشاهده بیشتر',
                            style: TextStyle(
                              color: CustomColor.blue,
                              fontSize: 16,
                              fontFamily: 'SM',
                            ),
                          ),
                          Spacer(),
                          Text(
                            'خبرهای داغ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'SM'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 310,
                      child: ListView.builder(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: HorizontalItem(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                  left: 24,
                  bottom: 24,
                  top: 24,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'مشاهده بیشتر',
                      style: TextStyle(
                        color: CustomColor.blue,
                        fontSize: 16,
                        fontFamily: 'SM',
                      ),
                    ),
                    Spacer(),
                    Text(
                      'خبرهایی که علاقه داری ',
                      style: TextStyle(
                          color: Colors.white, fontSize: 17, fontFamily: 'SM'),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 24,
                      left: 24,
                      right: 24,
                    ),
                    child: _VerticalItem(),
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarView extends StatelessWidget {
  const TabBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.5),
        ),
        width: 380,
        height: 43,
        child: DefaultTabController(
          length: 2,
          child: TabBar(
            indicator: BoxDecoration(
              border: Border.all(
                color: CustomColor.blue,
              ),
              borderRadius: BorderRadius.circular(18),
              color: CustomColor.blue,
            ),
            tabs: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 4,
                  left: 4,
                  top: 4,
                ),
                child: Container(
                  height: 35,
                  width: 186,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Text(
                      'دنبال میکنید',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 4,
                  right: 4,
                  top: 4,
                ),
                child: Container(
                  height: 35,
                  width: 186,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 10,
                    ),
                    child: Text(
                      'پیشنهادی',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalItem extends StatelessWidget {
  const HorizontalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 310,
      decoration: BoxDecoration(
        color: Color(0xff262837),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 4,
          ),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Image.asset('images/taremi.png'),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  right: 10,
                ),
                width: 58,
                height: 28,
                decoration: BoxDecoration(
                  color: Color(0xff313666),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'ورزشی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SM',
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'پنج دقیقه قبل',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'SM',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'پیشنهاد مونیوز',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'SM',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'images/flash-circle.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 26,
                ),
                child: Text(
                  ' پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SM',
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      'خبرگزاری آخرین خبر ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'SM',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'images/Ellipse 1.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _VerticalItem extends StatelessWidget {
  const _VerticalItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 140,
      decoration: BoxDecoration(
        color: Color(0xff262837),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              right: 16,
              top: 16,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'ساعت هوشمند گارمین با باتری 11 روزه',
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: CustomColor.white,
                    fontFamily: 'SM',
                    fontSize: 16,
                  ),
                ),
                Text(
                  'این ساعت دارای ویژگی‌های جذابی است',
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: CustomColor.grey,
                    fontFamily: 'SM',
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Container(
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Text(
                        'خبرگزاری زومیت',
                        style: TextStyle(
                            color: CustomColor.grey,
                            fontFamily: 'SM',
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Image.asset(
                        'images/Ellipse 1.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 8,
                  top: 8,
                  bottom: 8,
                ),
                child: SizedBox(
                  width: 56,
                  child: Image.asset('images/watch.png'),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff313666).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 50,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'ساعت',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SM',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
