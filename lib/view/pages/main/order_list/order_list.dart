import 'package:beamin_prototype/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _bulidStore("치킨집", "네네치킨", "후라이드 치킨 외 2개 43,000원"),
          _bulidStore("피자집", "피자집", "포테이토 피자 14,000원"),
          _bulidStore("보쌈집", "보쌈집", "수육 ( 중 ) 외 3개 57,000원"),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("주문내역", style: textTheme().headline1),
      centerTitle: true,
      elevation: 1.0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.left_chevron,
          size: 35,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.home,
            size: 35,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.cart,
            size: 35,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 16,
        )
      ],
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

Widget _bulidStore(String img, String storeName, String order) {
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
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "${storeName}  >",
                        style: textTheme().headline2,
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "${order}",
                  style: textTheme().subtitle1,
                ),
              ],
            ),
          ],
        ),
      ),
      Container(color: Colors.grey[200], height: 8),
    ],
  );
}
