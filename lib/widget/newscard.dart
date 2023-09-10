import 'package:flutter/material.dart';
import 'package:news_app_clone/screens/newsscreen.dart';

class NewsCard extends StatelessWidget {
  NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
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
                  child: Image.asset('images/Rectangle 24.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Image.asset('images/flash-circle.png')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
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
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('images/short-Menu.png'),
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
                            Image.asset('images/Ellipse 1.png')
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Text(
                'ورزشی',
                style: TextStyle(
                    fontSize: 12, fontFamily: 'SH', color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
