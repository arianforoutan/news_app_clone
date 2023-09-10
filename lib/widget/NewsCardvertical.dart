import 'package:flutter/material.dart';

class NewsCardVertical extends StatelessWidget {
  const NewsCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.9,
                        child: Text(
                          'از مشخـصات فنی تـا قیمت؛ هرآنـچه تا بـه امروز درباره آیفون 14 اپل می‌دانیم',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'SH',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.9,
                        child: Text(
                          'در این مطلـب نـگاهـی به تمـام گـزارش‌ها و شـایـعات پـیـرامون گـوشـی‌هـای سری آیفون 14 اپل داریم',
                          style: TextStyle(
                              fontSize: 8,
                              fontFamily: 'SH',
                              color: Colors.grey),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset('images/short-Menu.png'),
                          SizedBox(
                            width: 112,
                          ),
                          Text(
                            'خبرگزاری  دیجیاتو',
                            style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'SH',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/Ellipse 1 (1).png')
                        ],
                      ),
                    ],
                  ),
                  Image.asset('images/Rectangle 194.png')
                ],
              ),
            ),
          ),
          Positioned(
            top: 13,
            right: 13,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xffFF033E).withOpacity(0.5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text(
                  'تکنولوژی',
                  style: TextStyle(
                      fontSize: 10, fontFamily: 'SH', color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
