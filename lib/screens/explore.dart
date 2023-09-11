import 'package:flutter/material.dart';
import 'package:news_app_clone/widget/newscard.dart';
import 'package:news_app_clone/widget/newsco_card.dart';
import 'package:simple_animations/simple_animations.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
                child: NewsCoCard(),
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
                      InkWell(
                        onTap: () {},
                        child: Text(
                          ' پیشنهاد سردبیر',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'SH',
                              fontWeight: FontWeight.bold),
                        ),
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
                        child: NewsCard(),
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
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 15,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: 50,
                color: Color(0xffFF033E),
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAnimationBuilder<double>(
                        control: Control
                            .loop, // bind variable with control instruction
                        tween: Tween<double>(begin: -1000, end: 1000),
                        duration: const Duration(seconds: 20),
                        builder: (context, value, child) {
                          // moves child from left to right
                          return Transform.translate(
                            transformHitTests: false,
                            offset: Offset(value, 0),
                            child: Text(
                              ' بی‌نظمی شدید در مراسم رونمایی از کاپ جام جهانی و قهر نماینده فیفا   برانکو تکذیب کرد/ نه با عمان فسخ کردم، نه با ایران مذاکره داشتم ...',
                              style: TextStyle(
                                fontFamily: 'SH',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container subtitlenews() {
    return Container(
      height: 50,
      color: Color(0xffFF033E),
      width: double.infinity,
      child: SingleChildScrollView(
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
    );
  }
}
