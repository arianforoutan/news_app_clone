import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          _getImageContainer(context),
          _getTwoContainer(context),
        ],
      ),
    );
  }

  Widget _getTwoContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.9,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50)),
                        height: 5,
                        width: 70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "5 دقیقه قبل",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'SH',
                              color: Colors.grey),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffFF033E),
                          ),
                          height: 26,
                          width: 117,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'خبرگزاری  آخرین خبر',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'SH',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset('images/Ellipse 1.png')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Row(
                            children: [
                              Text(
                                'پیشنهاد مونیوز',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SH',
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset('images/flash-circle.png')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                    child: Text(
                      'پاسـخ مـنـفی پــورتـو به چـلـسی بـرای جــذب طـارمـی با طعم تهدید',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'SH',
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xffFFCDD8)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            child: Center(
                              child: Text(
                                'فوتبال اروپا',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SH',
                                    color: Color(0xffFF033E)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xffFFCDD8)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            child: Center(
                              child: Text(
                                'لژیونر ها',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SH',
                                    color: Color(0xffFF033E)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xffFFCDD8)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            child: Center(
                              child: Text(
                                'ورزشی',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SH',
                                    color: Color(0xffFF033E)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Text(
                      'باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجـم ایران بـود، با پاسـخ منفی باشگاه پورتو مواجه شد و این بازیـکن باوجود رویای بازی در لیگ برتر انگلیس فعلا در پرتغال ماندنی است.',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SH',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'بحث پیشنهاد باشگاه چلسـی انـگـلیس به پـورتـو بـرای جـذب مـهدی طــارمـی در آخـریــن ســاعــات نــقـل و انـتـقـالـات فــوتـبـال اروپـا یــکـی از سوژه‌های اصلی هواداران دو تیم بود. این خبر در حالی رسانه‌ای شد که گفته می‌شد چلسی برای جذب طارمی مبلغ ۲۵ میلیون یورو را به پورتو پیشنهاد داده است. روزنـامه «ابولا» پرتغال هم روز چهارشنـبـه ایــن خـبر را اعلـام کرد و به دنبال آن بعضی از مطبوعات انگلیس و کشورهای دیگر هم پیشنهاد',
                      style: TextStyle(
                          fontSize: 14, fontFamily: 'SH', color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'طـارمـی در لـیـگ قـهـرمـانـان دو فــصـل پــیــش اروپـا و در دیـدار مـقـابـل چلسی عملکرد بی نظیری داشت و با یک گل قیچی برگردان، پورتو را به پیروزی رساند. هرچند که نماینده پرتـغال به خاطر مجموع نـتـایـج بازی رفت و برگشت حـذف شد. با ایـن حـال گـل طـارمـی حتـی تـا یک قـدمی انـتخـاب بهـترین گـل سـال فیـفا و دریـافـت جـایزه «پوشکاش» هم پیش رفت.',
                      style: TextStyle(
                          fontSize: 14, fontFamily: 'SH', color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'طـارمـی در لـیـگ قـهـرمـانـان دو فــصـل پــیــش اروپـا و در دیـدار مـقـابـل چلسی عملکرد بی نظیری داشت و با یک گل قیچی برگردان، پورتو را به پیروزی رساند. هرچند که نماینده پرتـغال به خاطر مجموع نـتـایـج بازی رفت و برگشت حـذف شد. با ایـن حـال گـل طـارمـی حتـی تـا یک قـدمی انـتخـاب بهـترین گـل سـال فیـفا و دریـافـت جـایزه «پوشکاش» هم پیش رفت.',
                      style: TextStyle(
                          fontSize: 13, fontFamily: 'SH', color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _getImageContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image(
            image: AssetImage('images/17469_101 1.png'),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.75,
        )
      ],
    );
  }
}
