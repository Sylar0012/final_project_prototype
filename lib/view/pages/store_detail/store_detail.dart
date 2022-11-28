import 'package:beamin_prototype/constants.dart';
import 'package:beamin_prototype/size.dart';
import 'package:beamin_prototype/view/pages/main/main_page.dart';
import 'package:beamin_prototype/view/pages/store_detail/components/store_detail_appbar.dart';
import 'package:beamin_prototype/view/pages/store_detail/review/store_review.dart';
import 'package:beamin_prototype/view/pages/store_detail/store_info/store_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreDetail extends StatefulWidget {
  const StoreDetail({Key? key}) : super(key: key);

  @override
  State<StoreDetail> createState() => _StoreDetailState();
}

class _StoreDetailState extends State<StoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StoreDetailAppBer(appBar: AppBar(), title: "", center: false),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                              Text("네네치킨 김해 내외점",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Color(0xFF1E2D2A), shadows: [
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
              SizedBox(height: gap_l),
              _bulidStoreMenu(context, "치킨집", "후라이드 치킨", "후라이드 치킨 존맛탱ㅇㅈ? ㅇ ㅇㅈ~~ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ", "17,000원"),
              _bulidStoreMenu(context, "치킨집", "양념 치킨", "착한 사람 눈엔 양념치킨 사진으로 보입니다. 당신은 착한 사람입니다", "19,000원"),
              _bulidStoreMenu(context, "치킨집", "간장 치킨", "간장 드릴테니 찍어드세연 ㅋㅋㄹㅃㅃ 꼬우면 아시죠?ㅋㅋㅋㅋ", "18,000원"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _bulidStoreMenu(BuildContext context, String img, String menuName, String menuInfo, String menuPrice) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/store_image/${img}.jpg",
                width: 115,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: gap_m),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${menuName}",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: 200,
                child: Text(
                  "${menuInfo}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                "${menuPrice}",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
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
