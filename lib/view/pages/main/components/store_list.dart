import 'package:beamin_prototype/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  final String img;
  final String storeName;
  const StoreList({required this.img, required this.storeName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${storeName}",
                    style: textTheme().headline2,
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(CupertinoIcons.star_fill, size: 16, color: Colors.orangeAccent),
                      SizedBox(width: 4),
                      Text(
                        "4.2   (리뷰: 12)",
                        style: textTheme().bodyText2,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "배달비: 3000원",
                    style: textTheme().bodyText2,
                  ),
                  SizedBox(height: 4),
                  Text("배달 예상 시간: 38 ~ 42분"),
                ],
              )
            ],
          ),
        ),
        Divider(thickness: 2, height: 2, color: Colors.grey[200]),
      ],
    );
  }
}
