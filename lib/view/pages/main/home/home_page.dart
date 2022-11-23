import 'package:beamin_prototype/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/home_page_image/aa11.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(color: Colors.grey[200], height: 8),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _bulidCategory1(),
                  SizedBox(height: 8),
                  _bulidCategory2(),
                ],
              ),
            ),
          ),
          Container(color: Colors.grey[200], height: 8),
          _bulidStore("치킨집", "네네치킨"),
          _bulidStore("피자집", "도미노피자"),
          _bulidStore("보쌈집", "원할머니보쌈"),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "경남 김해시 외동 89754-4번지",
            style: textTheme().headline1,
            textAlign: TextAlign.start,
          ),
          SizedBox(width: 4),
          Icon(
            CupertinoIcons.chevron_down,
            size: 15,
            color: Colors.black,
          ),
          SizedBox(width: 36),
          Icon(
            CupertinoIcons.bell,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(width: 4),
          Icon(
            CupertinoIcons.search,
            size: 35,
            color: Colors.black,
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(
          thickness: 1,
          height: 1,
          color: Colors.grey,
        ),
      ),
    );
  }
}

Widget _bulidStore(String img, String storeName) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/store_image/${img}.jpg",
                width: 115,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${storeName}"),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star, size: 16),
                  ],
                ),
                SizedBox(height: 8),
                Text("배달 예상 시간 : 38 ~ 42분"),
                SizedBox(height: 8),
                Text("${storeName} 주운나 마싯어연 ^^"),
              ],
            ),
          ],
        ),
      ),
      Container(color: Colors.grey[200], height: 8),
    ],
  );
}

Row _bulidCategory1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/치킨.jpg", fit: BoxFit.cover),
          ),
          Text("치킨 "),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/피자.jpg", fit: BoxFit.cover),
          ),
          Text(
            "피자",
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/버거.jpg", fit: BoxFit.cover),
          ),
          Text("버거"),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/돈까스.jpg", fit: BoxFit.cover),
          ),
          Text("돈까스"),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/떡볶이.jpg", fit: BoxFit.cover),
          ),
          Text("분식"),
        ],
      ),
    ],
  );
}

Row _bulidCategory2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/짜장면.jpg", fit: BoxFit.cover),
          ),
          Text("중식"),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/초밥.jpg", fit: BoxFit.cover),
          ),
          Text(
            "일식",
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/스테이크.jpg", fit: BoxFit.cover),
          ),
          Text("고기"),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/비빔밥.jpg", fit: BoxFit.cover),
          ),
          Text("한식"),
        ],
      ),
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/category_image/보쌈.jpg", fit: BoxFit.cover),
          ),
          Text("보쌈"),
        ],
      ),
    ],
  );
}
