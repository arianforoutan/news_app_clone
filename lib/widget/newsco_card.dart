import 'package:flutter/material.dart';

class NewsCoCard extends StatelessWidget {
  NewsCoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                    'زومیت',
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'SH', color: Colors.black),
                  ),
                  Container(
                    height: 30,
                    width: 101,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffFFCDD8)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
    );
  }

  List<String> name = ['زومیت', ' دیجیاتو', 'ورزش 3'];
}
