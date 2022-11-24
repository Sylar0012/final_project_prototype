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
          _eventImage(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
              child: Column(
                children: [
                  _bulidCategory1(),
                  SizedBox(height: 8),
                  _bulidCategory2(),
                ],
              ),
            ),
          ),
          _bulidStore("치킨집", "네네치킨"),
          _bulidStore("피자집", "도미노피자"),
          _bulidStore("보쌈집", "원할머니보쌈")
        ],
      ),
    );
  }

  Container _eventImage() {
    return Container(
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
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("내 주소가 들어갈 공간입니다", style: textTheme().headline1),
      centerTitle: true,
      elevation: 1.0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.left_chevron,
          size: 28,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.shopping_cart,
            size: 28,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}

Padding _bulidStore(String img, String storeName) {
  return Padding(
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
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${storeName}"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(CupertinoIcons.star_fill, size: 16, color: Colors.orangeAccent),
                Icon(CupertinoIcons.star_fill, size: 16, color: Colors.orangeAccent),
                Icon(CupertinoIcons.star_fill, size: 16, color: Colors.orangeAccent),
                Icon(CupertinoIcons.star_fill, size: 16, color: Colors.orangeAccent),
                Icon(CupertinoIcons.star, size: 16, color: Colors.orangeAccent),
              ],
            ),
            SizedBox(height: 8),
            Text("배달 예상 시간 : 38 ~ 42분"),
            SizedBox(height: 8),
            Text("${storeName} 주운나 마싯어연 ^^"),
          ],
        )
      ],
    ),
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
