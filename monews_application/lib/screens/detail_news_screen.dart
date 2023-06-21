import 'package:flutter/material.dart';
import 'package:monews_application/constants/constants.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController controller1 = ScrollController();
    return Scaffold(
      body: SafeArea(
        child: DetailContent(controller1: controller1),
      ),
    );
  }
}

class DetailContent extends StatelessWidget {
  const DetailContent({
    super.key,
    required this.controller1,
  });

  final ScrollController controller1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset('images/maintaremi.png'),
            Expanded(
              child: Container(),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Container(
              height: 265,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColor.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 100,
                      height: 10,
                      decoration: BoxDecoration(
                        color: CustomColor.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                        bottom: 32,
                        right: 8,
                        left: 19,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'پنج دقیقه قبل',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomColor.grey,
                              fontFamily: 'SM',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 117,
                            height: 26,
                            decoration: BoxDecoration(
                              color: CustomColor.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'خبرگزاری  ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColor.grey,
                                    fontFamily: 'SM',
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('images/Ellipse 1.png'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'پیشنهاد مونیوز',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomColor.grey,
                              fontFamily: 'SM',
                              fontSize: 14,
                            ),
                          ),
                          Image.asset('images/flash-circle.png'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 23,
                        left: 23,
                      ),
                      child: Text(
                        'پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید',
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: CustomColor.white,
                          fontFamily: 'SM',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 23,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 58,
                            height: 36,
                            decoration: BoxDecoration(
                              color: CustomColor.blueaceent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'فوتبال',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 58,
                            height: 36,
                            decoration: BoxDecoration(
                              color: CustomColor.blueaceent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'لژیونر',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 58,
                            height: 36,
                            decoration: BoxDecoration(
                              color: CustomColor.blueaceent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ورزشی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 24,
                        left: 24,
                        bottom: 20,
                      ),
                      child: Text(
                        'باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجم ایران بود با پاسخ منفی باشگاه پورتو شد که این قضیه تاثیر خوبی در روحیه تیم پرتقالی پرتو داشت و با شگاه را خوشحال کرد',
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: CustomColor.grey,
                          fontFamily: 'SM',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 24,
                        ),
                        child: RawScrollbar(
                          controller: controller1,
                          thumbVisibility: true,
                          thumbColor: CustomColor.blue,
                          radius: Radius.circular(20),
                          thickness: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                              left: 21,
                            ),
                            child: ListView(
                              controller: controller1,
                              children: [
                                Text(
                                  'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب مهدی طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر در حالی رسانه‌ای شد که گفته می‌شود چلسی برای جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنهاد داده است. روزنامه ایولا پرتقال هم روز پهارشنبه این خبر را اعلام کرد و به دنبال آن بعضی از مطبوعات انگلیس و کشورهای دیگر هم پیشنهاد چلسی به طارمی را دنبال کردند.',
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: CustomColor.grey,
                                    fontFamily: 'SM',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
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
    );
  }
}
