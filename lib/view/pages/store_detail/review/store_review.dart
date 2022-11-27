import 'package:beamin_prototype/size.dart';
import 'package:beamin_prototype/theme.dart';
import 'package:beamin_prototype/view/pages/main/main_page.dart';
import 'package:beamin_prototype/view/pages/store_detail/store_detail.dart';
import 'package:beamin_prototype/view/pages/store_detail/store_info/store_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreReview extends StatelessWidget {
  const StoreReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  icon: Icon(CupertinoIcons.left_chevron)),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  border: BorderDirectional(bottom: BorderSide(width: 1, color: Color.fromRGBO(221, 221, 221, 1))),
                  image: DecorationImage(
                    image: AssetImage("assets/images/store_image/치킨집.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment(0, 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color.fromRGBO(221, 221, 221, 1), width: 1),
                          color: Colors.white,
                        ),
                        height: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(gap_s),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("네네치킨",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Color(0xFF1E2D2A), shadows: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                      offset: const Offset(0.5, 1),
                                    )
                                  ])),
                              SizedBox(height: gap_xs),
                              Row(
                                children: [
                                  _bulidStarIcon(CupertinoIcons.star_fill),
                                  _bulidStarIcon(CupertinoIcons.star_fill),
                                  _bulidStarIcon(CupertinoIcons.star_fill),
                                  _bulidStarIcon(CupertinoIcons.star_fill),
                                  _bulidStarIcon(CupertinoIcons.star),
                                ],
                              ),
                              SizedBox(height: gap_s),
                              Row(
                                children: [
                                  Text("리뷰 : 100+",
                                      style: TextStyle(fontSize: 15, color: Color(0xFF1E2D2A), shadows: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(1),
                                          blurRadius: 1.0,
                                          spreadRadius: 1.0,
                                          offset: const Offset(0.5, 1),
                                        )
                                      ])),
                                  SizedBox(width: gap_xl),
                                  Text("사장님 댓글 : 100+",
                                      style: TextStyle(fontSize: 15, color: Color(0xFF1E2D2A), shadows: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(1),
                                          blurRadius: 1.0,
                                          spreadRadius: 1.0,
                                          offset: const Offset(0.5, 1),
                                        )
                                      ])),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStoreInfoIconWithText(CupertinoIcons: CupertinoIcons.heart_fill, text: " 1234"),
                  _buildStoreInfoIcon(CupertinoIcons.phone_solid),
                  _buildStoreInfoIconWithText(CupertinoIcons: CupertinoIcons.map_pin_ellipse, text: " 3.1 Km"),
                ],
              ),
              SizedBox(height: gap_s),
              Divider(
                height: 1,
                thickness: 1,
                color: Color.fromRGBO(221, 221, 221, 1),
              ),
              _buildStioreInfoText("최소 주문 금액 : 17,000원"),
              _buildStioreInfoText("결제방법 : 바로결제, 카드결제"),
              _buildStioreInfoText("배달 예상 시간 : 25 ~ 30 분"),
              _buildStioreInfoText("배달 팁 : 3,000원"),
              SizedBox(height: gap_s),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _bulidStoreCategory(context, "메뉴", StoreDetail()),
                  _bulidStoreCategory(context, "정보", StoreInfo()),
                  _bulidStoreCategory(context, "리뷰", StoreReview()),
                ],
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color.fromRGBO(221, 221, 221, 1),
              ),
            ],
          ),
          SizedBox(height: gap_s),
          _bulidUserReview("김민철", "양념치킨, 후라이드 치킨", 4),
          SizedBox(height: gap_s),
          _bulidReviewImg("치킨집"),
          SizedBox(height: gap_s),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: gap_s),
            child: Text(
              "바삭하게 잘 튀겨주셔서 잘 먹고 갑니다 근데 왜 후라이드가 2마리 온거죠?",
              style: TextTheme().bodyText1,
            ),
          ),
          SizedBox(height: gap_s),
          _bulidOwnerComent("고객님은 나쁜 사람입니다. 착한 사람눈에는 양념치킨으로 보였을 텐데 말이죠...."),
          SizedBox(height: gap_s),
          _bulidUserReview("이성진", "양념치킨 2", 5),
          SizedBox(height: gap_s),
          _bulidReviewImg("치킨집"),
          SizedBox(height: gap_s),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: gap_s),
            child: Text(
              "양념치킨 너무 맛있어요!",
              style: TextTheme().bodyText1,
            ),
          ),
          SizedBox(height: gap_s),
          _bulidOwnerComent("윗분과 다르게 착하신 분이군요! 다음에 서비스로 콜라 드리겠습니다 ㅎㅎ"),
        ],
      ),
    );
  }
}

Widget _bulidOwnerComent(String Comment) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: gap_s),
    child: Container(
      color: Color.fromRGBO(248, 248, 252, 0.8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: gap_s, vertical: gap_s),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "사장님 댓글",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF1E2D2A),
                shadows: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0.5, 1),
                  )
                ],
              ),
            ),
            SizedBox(height: gap_s),
            Text("${Comment}", style: TextTheme().bodyText2),
            SizedBox(height: gap_s),
          ],
        ),
      ),
    ),
  );
}

Widget _bulidReviewImg(String img) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: gap_s),
    height: 200,
    width: double.infinity,
    child: Image.asset(
      "assets/images/store_image/${img}.jpg",
      fit: BoxFit.cover,
    ),
  );
}

Widget _bulidUserReview(String nickName, String orderList, starPoint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: gap_s),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          CupertinoIcons.person_alt_circle_fill,
          size: 48,
          color: Color(0xFF1E2D2A),
        ),
        SizedBox(width: gap_s),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${nickName}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: const Offset(0.5, 1),
                    ),
                  ],
                ),
              ),
              Text("${orderList}", style: textTheme().bodyText2),
            ],
          ),
        ),
        SizedBox(width: gap_l),
        for (int i = 0; i < starPoint; i++) _bulidStarIcon(CupertinoIcons.star_fill),
        if (starPoint < 5)
          for (int i = 0; i < 5 - starPoint; i++) _bulidStarIcon(CupertinoIcons.star),
      ],
    ),
  );
}

Widget _bulidStoreCategory(BuildContext context, String text, settings) {
  return Container(
    decoration: BoxDecoration(
        border: Border(
      left: BorderSide(color: Color.fromRGBO(221, 221, 221, 1), width: 1),
      right: BorderSide(color: Color.fromRGBO(221, 221, 221, 1), width: 1),
      top: BorderSide(color: Color.fromRGBO(221, 221, 221, 1), width: 1),
    )),
    child: TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => settings));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: gap_l),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            shadows: [
              BoxShadow(
                color: Colors.grey.withOpacity(1),
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: const Offset(0.5, 1),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildStoreInfoIcon(CupertinoIcons) {
  return Row(
    children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                CupertinoIcons,
                color: Colors.red,
                shadows: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0.5, 1),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildStioreInfoText(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: gap_s, left: gap_s),
    child: Text(
      "${text}",
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
}

Widget _bulidStarIcon(CupertinoIcons) {
  return Icon(
    CupertinoIcons,
    size: 24,
    color: Color(0xFFFF521C),
    shadows: [
      BoxShadow(
        color: Colors.grey.withOpacity(1),
        blurRadius: 1.0,
        spreadRadius: 1.0,
        offset: const Offset(0.5, 1),
      )
    ],
  );
}

Widget _buildStoreInfoIconWithText({required CupertinoIcons, required String text}) {
  return Row(
    children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                CupertinoIcons,
                color: Colors.red,
                shadows: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0.5, 1),
                  )
                ],
              ),
              Text(
                "${text}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: const Offset(0.5, 1),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
