import 'package:flutter/material.dart';

import 'newsscreen.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        leadingWidth: 150,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Row(
            children: [
              Image.asset('images/search-normal.png'),
              SizedBox(
                width: 30,
              ),
              Image.asset('images/filter-edit.png')
            ],
          ),
        ),
        title: Container(
          height: 34,
          width: 70,
          child: Image.asset('images/titleappbar.png'),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    height: 180,
                    child: ListView.builder(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Image.asset('images/Banner-${index + 1}.png'),
                        );
                      }),
                      itemCount: 2,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          child: Center(
                            child: Text(
                              'جهان ',
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
                            color: Colors.white),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          child: Center(
                            child: Text(
                              ' تکنولوژی',
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
                            color: Colors.white),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, bottom: 20, top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'مشاهده بیشتر',
                        style: TextStyle(
                            color: Color(0xffFF033E),
                            fontSize: 12,
                            fontFamily: 'SH',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'خبرگزاری ها',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SH',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 160,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: Container(
                          height: 160,
                          width: 133,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  height: 56,
                                  width: 56,
                                  child: Image.asset(
                                    'images/${index + 1}.png',
                                    fit: BoxFit.cover,
                                  )),
                              Text(
                                name[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SH',
                                    color: Colors.black),
                              ),
                              Container(
                                height: 30,
                                width: 101,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: Color(0xffFFCDD8)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  child: Center(
                                    child: Text(
                                      'دنبال کردن',
                                      style: TextStyle(
                                          fontSize: 12,
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
                      );
                    }),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, bottom: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'مشاهده بیشتر',
                        style: TextStyle(
                            color: Color(0xffFF033E),
                            fontSize: 12,
                            fontFamily: 'SH',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' پیشنهاد سردبیر',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SH',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 292,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return NewsScreen();
                                })));
                              },
                              child: Container(
                                height: 292,
                                width: 275,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Image.asset(
                                          'images/Rectangle 24.png'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "5 دقیقه قبل",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'SH',
                                                      color: Colors.grey),
                                                ),
                                                Spacer(),
                                                Text(
                                                  'پیشنهاد مونیوز',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'SH',
                                                      color: Colors.grey),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Image.asset(
                                                    'images/flash-circle.png')
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Text(
                                              ' پــاسـخ منـفـی پــورتـــو بـه چلـسـی بـرای جذب  طارمی با طعم تهدید ',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'SH',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.end,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                    'images/short-Menu.png'),
                                                Spacer(),
                                                Text(
                                                  'خبرگزاری آخرین خبر',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily: 'SH',
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Image.asset(
                                                    'images/Ellipse 1.png')
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 14,
                              right: 14,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xffFF033E).withOpacity(0.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  child: Text(
                                    'ورزشی',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'SH',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(bottom: 130),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.35,
              right: 0,
              left: 0,
              bottom: MediaQuery.of(context).size.height / 15,
              child: Container(
                color: Color(0xffFF033E),
                width: double.infinity,
                child: SingleChildScrollView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' بی‌نظمی شدید در مراسم رونمایی از کاپ جام جهانی و قهر نماینده فیفا   برانکو تکذیب کرد/ نه با عمان فسخ کردم، نه با ایران مذاکره داشتم ...',
                        style: TextStyle(
                          fontFamily: 'SH',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  List<String> name = ['زومیت', ' دیجیاتو', 'ورزش 3'];
}
