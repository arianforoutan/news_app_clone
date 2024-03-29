import 'dart:ui';
import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:news_app_clone/screens/newsscreen.dart';
import 'package:news_app_clone/widget/NewsCardvertical.dart';
import 'package:news_app_clone/widget/newscard.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        leading: Image.asset('images/notification-status(1).png'),
        title: Container(
          height: 34,
          width: 70,
          child: Image.asset('images/titleappbar.png'),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                indicator: ContainerTabIndicator(
                  radius: BorderRadius.circular(35),
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  color: Color(0xffFF033E),
                ),
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SH',
                    fontWeight: FontWeight.bold),
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'دنبال میکنید',
                  ),
                  Tab(
                    text: 'پیشنهادی',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, bottom: 20, top: 5),
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
                  'خبر های داغ',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SH',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: NewsCard(),
                            );
                          },
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 20),
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
                              'خبر های که علاقه داری',
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
                        height: 200,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return NewsCardVertical();
                          },
                        ),
                      ),
                    )
                  ],
                ),
                CustomScrollView(
                  slivers: [
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
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
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
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                                            color:
                                                                Colors.black),
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
                                        color:
                                            Color(0xffFF033E).withOpacity(0.5),
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
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 20),
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
                              'خبر های که علاقه داری',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SH',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return NewsCardVertical();
                      }, childCount: 6),
                    ),
                    SliverPadding(padding: EdgeInsets.only(bottom: 50))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
